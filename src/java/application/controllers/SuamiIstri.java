/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class SuamiIstri extends _SuamiIstri {

    @Override
    protected void initSqlViewDataPerPage() {
        PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPage = "select NIP,tgl_menikah as `Tgl Menikah` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";

    }
}
