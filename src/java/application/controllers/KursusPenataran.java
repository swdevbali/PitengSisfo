/** 
 * 
 */

package application.controllers;
import application.models.PegawaiModel;
import recite18th.model.Model;

public class KursusPenataran extends _KursusPenataran
{
  

    @Override
    protected void initSqlViewDataPerPage() {
       PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() +" where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,nama_kursus_penataran as `Nama Kursus/Penataran`,Tempat,Penyelenggara,tgl_mulai as `Tgl Mulai`,tgl_selesai as `Tgl Selesai`,no_sertifikat as `No. Sertifikat`,tgl_sertifikat as `Tgl Sertifikat`,jumlah_jam as `Jumlah Jam`, Jenis from " + model.getTableName() +" where nip='" + pegawaiTerpilih.getNip() + "'";
        
    }
      
      
}
