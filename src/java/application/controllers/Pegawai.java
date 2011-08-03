/** 
 * Modifikasi pemilihan pegawai yang akan diedit
 */

package application.controllers;
import recite18th.controller.Controller;
import application.models.PegawaiModel;

public class Pegawai extends _Pegawai
{
    public void chooseAnother()
    {
        request.getSession().removeAttribute("pegawai_terpilih_nip");
        request.getSession().removeAttribute("pegawai_terpilih");
        super.index();
    }
    public void chooseAsMaster(String nip)
    {
        request.getSession().setAttribute("pegawai_terpilih_nip",nip);
        PegawaiModel pegawai_terpilih = new PegawaiModel();
        pegawai_terpilih.addCriteria("nip", nip);
        pegawai_terpilih.get();
        request.getSession().setAttribute("pegawai_terpilih",pegawai_terpilih);
        index();
    }
}
