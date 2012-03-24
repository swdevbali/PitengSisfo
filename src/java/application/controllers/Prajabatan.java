/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class Prajabatan extends _Prajabatan {

    @Override
    protected void initSqlViewDataPerPage() {
        PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,jenis_prajabatan as `Jenis Prajabatan`,Tempat,Penyelenggara,tgl_pelaksanaan as `Tgl Pelaksanaan`,no_sttpl as `No. STTPL`, tgl_sttpl as `Tgl STTPL` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";

    }
}
