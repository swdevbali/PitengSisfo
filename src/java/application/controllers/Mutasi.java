/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class Mutasi extends _Mutasi {

    @Override
    protected void initSqlViewDataPerPage() {
        PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,no_sk_mutasi as `No. SK Mutasi`,tmt_mutasi as `TMT Mutasi`,tujuan_mutasi as `Tujuan Mutasi`,jenis_mutasi as `Jenis Mutasi`,pejabat_berwenang as `Pejabat Berwenang`,tempat_mutasi as `Tempat Mutasi`, tgl_mutasi as `Tanggal Mutasi` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";


    }
}
