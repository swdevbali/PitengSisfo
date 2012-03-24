/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class Jabatan extends _Jabatan {

   

    @Override
    protected void initSqlViewDataPerPage() {
        PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,kode_bagian_unit_kerja as `Kode Bagian Unit Kerja` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        
    }
    
    
    
}
