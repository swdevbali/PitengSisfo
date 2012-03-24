/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class NaikPangkat extends _NaikPangkat {

    @Override
    protected void initSqlViewDataPerPage() {
        PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,jenis_kenaikan_pangkat as `Jenis Kenaikan Pangkat`, kenaikan_pangkat_pilihan as `Kenaikan Pangkat Pilihan`,tmt_pangkat as `TMT Pangkat`,gaji_pokok as `Gaji Pokok`,no_sk_pangkat as `No. SK Pangkat`,tgl_sk_pangkat as `Tgl SK Pangkat`,pejabat_berwenang as `Pejabat Berwenang`, nama_pangkat as `Nama Pangkat` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";

    }
}
