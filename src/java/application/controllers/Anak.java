/** 
 * 
 */
package application.controllers;

import application.models.PegawaiModel;
import recite18th.model.Model;

public class Anak extends _Anak {

    @Override
    public void input(String pkFieldValue) {
        super.input(pkFieldValue);
    }

    @Override
    protected void initSqlViewDataPerPage() {
        PegawaiModel pegawaiTerpilih = (PegawaiModel) request.getSession().getAttribute("pegawai_terpilih");
        Model model = initModel();
        sqlViewDataPerPage = "select * from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
        sqlViewDataPerPageForReport = "select NIP,anak_ke as `Anak Ke`, nama_anak as `Nama Anak`, status_anak as `Status Anak`,tempat_lahir as `Tempat Lahir`,tgl_lahir as `Tgl Lahir`,jenis_kelamin as `Jenis Kelamin`,Pendidikan,Pekerjaan, status_tunjangan as `Status Tunjangan` from " + model.getTableName() + " where nip='" + pegawaiTerpilih.getNip() + "'";
    
    }
}
