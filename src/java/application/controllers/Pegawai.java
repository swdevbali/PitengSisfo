/** 
 * Modifikasi pemilihan pegawai yang akan diedit
 */
package application.controllers;

import application.models.PegawaiModel;
import application.models.UserAccountModel;

public class Pegawai extends _Pegawai {
    
    public Pegawai()
    {
        validationAddRule("nip", "len==18");
    }

    @Override
    protected void initSqlViewDataPerPage() {
        if (request.getSession().getAttribute("sess_search_value") == null) {
            UserAccountModel userAccount = (UserAccountModel) request.getSession().getAttribute("user_credential");
            if (userAccount.getRole().equals("Administrator")) {
                sqlViewDataPerPage = "select p.nip,p.no_karpeg as `No Kartu Pegawai',p.no_kartu_askes,p.nama_pegawai,p.tempat_lahir,p.tgl_lahir,p.jenis_kelamin,p.agama,p.golongan_darah,p.pendidikan_terakhir,p.status_kepegawaian,p.pangkat_golongan_ruang,p.tmt_pangkat,p.no_sk,p.tgl_mulai_kerja,p.pejabat_berwenang,p.unit_kerja,p.kode_bagian_unit_kerja,b.bagian_unit_kerja,p.kode_sub_unit_kerja,p.no_ktp,p.alamat_ktp,p.alamat_domisili,p.foto,s.sub_unit_kerja from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja";
                //sqlViewDataPerPage = "select p.nip,p.no_karpeg as `No Kartu Pegawai',p.no_kartu_askes,p.nama_pegawai,p.tempat_lahir,p.tgl_lahir,p.jenis_kelamin,p.agama,p.golongan_darah,p.status_perkawinan,p.pendidikan_terakhir,p.status_kepegawaian,p.pangkat_golongan_ruang,p.tmt_pangkat,p.no_sk,p.tgl_mulai_kerja,p.pejabat_berwenang,p.unit_kerja,p.kode_bagian_unit_kerja,b.bagian_unit_kerja,p.kode_sub_unit_kerja,p.no_ktp,p.alamat_ktp,p.alamat_domisili,p.foto,s.sub_unit_kerja from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja";
               sqlViewDataPerPage = "select p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja";
            } else {
                sqlViewDataPerPage = "select p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and p.nip='" + userAccount.getNip() + "'";
            }
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

    public void printSingle(String nip) {
        PegawaiModel pegawai_terpilih = new PegawaiModel();
        pegawai_terpilih.addCriteria("nip", nip);
        pegawai_terpilih.get();
        request.getSession().setAttribute("model", pegawai_terpilih);
        index("pegawai/cetak_pegawai.jsp");
    }
}
