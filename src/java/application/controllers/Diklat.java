/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class Diklat extends _Diklat {

    public Diklat() {
        validationAddRule("jumlah_jam", "integer_bigger_than_zero");
    }


    @Override
    protected void initSqlViewDataPerPage() {
       PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,nama_diklat as `Nama Diklat`, Tempat, Penyelenggara, tgl_mulai as `Tgl Mulai`, tgl_selesai as `Tgl Selesai`, no_sttpl as `No. STTPL`,tgl_sttpl as `Tgl STTPL`, jumlah_jam as `Jumlah Jam` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";

    }
    
    
}
