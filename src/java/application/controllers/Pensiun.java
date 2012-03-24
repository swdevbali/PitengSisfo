/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class Pensiun extends _Pensiun {

    @Override
    protected void initSqlViewDataPerPage() {
        PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,sk_pensiun as `SK Pensiun`,tmt_pensiun as `TMT Pensiusn`,alasan_pensiun as `Alasan Pensiun` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";

    }
}
