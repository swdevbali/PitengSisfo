/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class Pendidikan extends _Pendidikan {

    @Override
    protected void initSqlViewDataPerPage() {
        PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPage = "select NIP,tgl_ijazah_sttb as `Tgl Ijazah STTB` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";

    }
}
