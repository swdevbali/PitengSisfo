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
        sqlViewDataPerPageForReport = "select NIP,nama_jabatan as `Nama Jabatan`,jenis_jabatan as `Jenis Jabatan`, Eselon, unit_kerja as `Unit Kerja`,sub_unit_kerja as `Sub Unit Kerja`, tmt_jabatan as `TMT Jabatan`,no_sk_jabatan as `No. SK Jabatan`,tgl_sk_jabatan as `Tgl SK Jabatan`,no_surat_pelantikan as `No. Surat Pelantikan`,tgl_surat_pelantikan as `Tgl Surat Pelantikan`,pejabat_berwenang as `Pejabat Berwenang`  from " + model.getTableName() + " j,sub_unit_kerja s,bagian_unit_kerja b where j.kode_sub_unit_kerja=s.kode_sub_unit_kerja and b.kode_bagian_unit_kerja = j.kode_bagian_unit_kerja  and nip='" + pegawaiTerpilih.getNip() + "'";
        
    }
    
    
    
}
