/** 
 * Modifikasi pemilihan pegawai yang akan diedit
 */
package application.controllers;

import application.models.PegawaiModel;
import application.models.UserAccountModel;

public class Pegawai extends _Pegawai {

    public Pegawai() {
        validationAddRule("nip", "len==18");
    }

    @Override
    protected void initSqlViewDataPerPage() {

        if (request.getSession().getAttribute("user_credential") == null) {
            return;
        }
        if (request.getSession(false).getAttribute("sess_search_criteria") == null) {
            UserAccountModel userAccount = (UserAccountModel) request.getSession().getAttribute("user_credential");
            if (userAccount.getRole().equals("Administrator")) {
                sqlViewDataPerPageForReport = "select p.NIP,p.no_karpeg as `No Kartu Pegawai`,p.no_kartu_askes as `Nomor Kartu Askes`,p.nama_pegawai as `Nama`,p.tempat_lahir as `Tempat Lahir`,p.tgl_lahir as `Tanggal Lahir`,p.jenis_kelamin as `Jenis Kelamin`,p.Agama,p.golongan_darah as `Golongan Dara`,p.pendidikan_terakhir as `Pendidikan Terakhir`,p.status_kepegawaian as `Status Pegawai`,p.tgl_mulai_kerja as `Tgl Mulai Kerja`,b.bagian_unit_kerja as `Bagian Unit Kerja`,s.sub_unit_kerja as `Sub Unit Kerja`,p.pangkat_golongan_ruang as `Pangkat/Gol`,p.alamat_ktp as `Alamat KTP` from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja";
                sqlViewDataPerPage = "select p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja";
            } else {
                sqlViewDataPerPageForReport = "select p.NIP,p.no_karpeg as `No Kartu Pegawai`,p.no_kartu_askes as `Nomor Kartu Askes`,p.nama_pegawai as `Nama`,p.tempat_lahir as `Tempat Lahir`,p.tgl_lahir as `Tanggal Lahir`,p.jenis_kelamin as `Jenis Kelamin`,p.Agama,p.golongan_darah as `Golongan Dara`,p.pendidikan_terakhir as `Pendidikan Terakhir`,p.status_kepegawaian as `Status Pegawai`,p.tgl_mulai_kerja as `Tgl Mulai Kerja`,b.bagian_unit_kerja as `Bagian Unit Kerja`,s.sub_unit_kerja as `Sub Unit Kerja`,p.pangkat_golongan_ruang as `Pangkat/Gol`,p.alamat_ktp as `Alamat KTP` from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja";
                sqlViewDataPerPage = "select p.*,b.*,s.* from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and p.nip='" + userAccount.getNip() + "'";
            }
        } else {
            String criteria = request.getSession().getAttribute("sess_search_criteria") + "";
            String value = request.getSession().getAttribute("sess_search_value") + "";

            // only care about reporting in session search
            if (criteria.equals("kode_bagian_unit_kerja")) {
                sqlViewDataPerPageForReport = "select p.NIP,p.no_karpeg as `No Kartu Pegawai`,p.no_kartu_askes as `Nomor Kartu Askes`,p.nama_pegawai as `Nama`,p.tempat_lahir as `Tempat Lahir`,p.tgl_lahir as `Tanggal Lahir`,p.jenis_kelamin as `Jenis Kelamin`,p.Agama,p.golongan_darah as `Golongan Dara`,p.pendidikan_terakhir as `Pendidikan Terakhir`,p.status_kepegawaian as `Status Pegawai`,p.tgl_mulai_kerja as `Tgl Mulai Kerja`,b.bagian_unit_kerja as `Bagian Unit Kerja`,s.sub_unit_kerja as `Sub Unit Kerja`,p.pangkat_golongan_ruang as `Pangkat/Gol`,p.alamat_ktp as `Alamat KTP` from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and b.bagian_unit_kerja like '%" + value + "%'";
            } else if (criteria.equals("kode_sub_unit_kerja")) {
                sqlViewDataPerPageForReport = "select p.NIP,p.no_karpeg as `No Kartu Pegawai`,p.no_kartu_askes as `Nomor Kartu Askes`,p.nama_pegawai as `Nama`,p.tempat_lahir as `Tempat Lahir`,p.tgl_lahir as `Tanggal Lahir`,p.jenis_kelamin as `Jenis Kelamin`,p.Agama,p.golongan_darah as `Golongan Dara`,p.pendidikan_terakhir as `Pendidikan Terakhir`,p.status_kepegawaian as `Status Pegawai`,p.tgl_mulai_kerja as `Tgl Mulai Kerja`,b.bagian_unit_kerja as `Bagian Unit Kerja`,s.sub_unit_kerja as `Sub Unit Kerja`,p.pangkat_golongan_ruang as `Pangkat/Gol`,p.alamat_ktp as `Alamat KTP` from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and s.sub_unit_kerja like '%" + value + "%'";
            } else {
                sqlViewDataPerPageForReport = "select p.NIP,p.no_karpeg as `No Kartu Pegawai`,p.no_kartu_askes as `Nomor Kartu Askes`,p.nama_pegawai as `Nama`,p.tempat_lahir as `Tempat Lahir`,p.tgl_lahir as `Tanggal Lahir`,p.jenis_kelamin as `Jenis Kelamin`,p.Agama,p.golongan_darah as `Golongan Dara`,p.pendidikan_terakhir as `Pendidikan Terakhir`,p.status_kepegawaian as `Status Pegawai`,p.tgl_mulai_kerja as `Tgl Mulai Kerja`,b.bagian_unit_kerja as `Bagian Unit Kerja`,s.sub_unit_kerja as `Sub Unit Kerja`,p.pangkat_golongan_ruang as `Pangkat/Gol`,p.alamat_ktp as `Alamat KTP` from pegawai p, bagian_unit_kerja b, sub_unit_kerja s where p.kode_bagian_unit_kerja = b.kode_bagian_unit_kerja and p.kode_sub_unit_kerja = s.kode_sub_unit_kerja and " + criteria + " like '%" + value + "%'";
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

        request.getSession(false).setAttribute("sess_search_criteria", criteria);
        request.getSession(false).setAttribute("sess_search_value", value);

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
