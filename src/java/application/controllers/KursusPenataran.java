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
        
    }
      
      
}
