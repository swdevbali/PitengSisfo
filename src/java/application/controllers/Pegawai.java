/** 
 * Modifikasi pemilihan pegawai yang akan diedit
 */
package application.controllers;

import application.models.PegawaiModel;
import application.models.UserAccountModel;

public class Pegawai extends _Pegawai {

    

    @Override
    protected void initSqlViewDataPerPage() {
        UserAccountModel userAccount = (UserAccountModel) request.getSession().getAttribute("user_credential");
        if (userAccount.getRole().equals("Administrator")) {
            sqlViewDataPerPage = "select p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja ";
        } else {
            sqlViewDataPerPage = "select p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and p.nip='"+userAccount.getNip()+"'";

        }

    }


    public void chooseAnother() {
        request.getSession().removeAttribute("pegawai_terpilih_nip");
        request.getSession().removeAttribute("pegawai_terpilih");
        super.index();
    }

    public void chooseAsMaster(String nip) {
        request.getSession().setAttribute("pegawai_terpilih_nip", nip);
        PegawaiModel pegawai_terpilih = new PegawaiModel();
        pegawai_terpilih.addCriteria("nip", nip);
        pegawai_terpilih.get();
        request.getSession().setAttribute("pegawai_terpilih", pegawai_terpilih);
        index();
    }

    public void search() {
        String criteria = request.getParameter("search_criteria");
        String value = request.getParameter("search_value");
        System.out.println(criteria + "=" + value);

        request.getSession().setAttribute("sess_search_criteria", criteria);
        request.getSession().setAttribute("sess_search_value", value);

        if (criteria.equals("kode_bagian_unit_kerja")) {
            sqlViewDataPerPage = "select  p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and b.bagian_unit_kerja like '%" + value + "%'";
        } else if (criteria.equals("kode_sub_unit_kerja")) {
            sqlViewDataPerPage = "select  p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and s.sub_unit_kerja like '%" + value + "%'";
        } else {
            sqlViewDataPerPage = "select  p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and " + criteria + " like '%" + value + "%'";
        }
        index();
    }
}
