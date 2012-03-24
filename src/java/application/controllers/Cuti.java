/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class Cuti extends _Cuti {

  

    @Override
    protected void initSqlViewDataPerPage() {
       PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,jenis_cuti as `Jenis Cuti`,no_surat_ijin_cuti as `No. Surat Ijin Cuti`,tgl_surat_ijin_cuti as `Tgl Surat Ijin Cuti`,tgl_awal_cuti as `Tgl Awal Cuti`,tgl_akhir_cuti as `Tgl Akhir Cuti`, pejabat_berwenang as `Pejabat Berwenang` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        
    }
    
}

