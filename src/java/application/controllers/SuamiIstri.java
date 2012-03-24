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
        sqlViewDataPerPageForReport = "select NIP,nama_suami_istri as `Pasangan`, tempat_lahir as `Tempat Lahir`, tgl_lahir as `Tgl Lahir`, status_suami_istri as `Status Pasangan`, Pekerjaan, status_tunjangan as `Status Tunjangan`,  tgl_menikah as `Tgl Menikah` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";

    }
}
