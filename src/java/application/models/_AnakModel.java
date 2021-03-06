/** 
 * Autogenerated by Recite18th from table piteng.anak
 * Don't change this file. Instead, change the derived class AnakModel
 * 
 */

package application.models;
import recite18th.model.Model;
public class _AnakModel extends Model
{
    public String idanak;
    public String nip;
    public String anak_ke;
    public String nama_anak;
    public String status_anak;
    public String tempat_lahir;
    public String tgl_lahir;
    public String jenis_kelamin;
    public String pendidikan;
    public String pekerjaan;
    public String status_tunjangan;
    public _AnakModel()
    {
        tableName="anak";
        pkFieldName="idanak";
        fqn = AnakModel.class.getName();
        plainClassName = "AnakModel";
    }
    public void setIdanak(String idanak)
    {
        this.idanak=idanak;
    }
    public String getIdanak()
    {        return this.idanak;
    }
    public void setNip(String nip)
    {
        this.nip=nip;
    }
    public String getNip()
    {        return this.nip;
    }
    public void setAnak_ke(String anak_ke)
    {
        this.anak_ke=anak_ke;
    }
    public String getAnak_ke()
    {        return this.anak_ke;
    }
    public void setNama_anak(String nama_anak)
    {
        this.nama_anak=nama_anak;
    }
    public String getNama_anak()
    {        return this.nama_anak;
    }
    public void setStatus_anak(String status_anak)
    {
        this.status_anak=status_anak;
    }
    public String getStatus_anak()
    {        return this.status_anak;
    }
    public void setTempat_lahir(String tempat_lahir)
    {
        this.tempat_lahir=tempat_lahir;
    }
    public String getTempat_lahir()
    {        return this.tempat_lahir;
    }
    public void setTgl_lahir(String tgl_lahir)
    {
        this.tgl_lahir=tgl_lahir;
    }
    public String getTgl_lahir()
    {        return this.tgl_lahir;
    }
    public void setJenis_kelamin(String jenis_kelamin)
    {
        this.jenis_kelamin=jenis_kelamin;
    }
    public String getJenis_kelamin()
    {        return this.jenis_kelamin;
    }
    public void setPendidikan(String pendidikan)
    {
        this.pendidikan=pendidikan;
    }
    public String getPendidikan()
    {        return this.pendidikan;
    }
    public void setPekerjaan(String pekerjaan)
    {
        this.pekerjaan=pekerjaan;
    }
    public String getPekerjaan()
    {        return this.pekerjaan;
    }
    public void setStatus_tunjangan(String status_tunjangan)
    {
        this.status_tunjangan=status_tunjangan;
    }
    public String getStatus_tunjangan()
    {        return this.status_tunjangan;
    }
    public void get()
    {
        _AnakModel result = (_AnakModel) super.getModel();
        if(result!=null)
        {
            setIdanak(result.getIdanak());
            setNip(result.getNip());
            setAnak_ke(result.getAnak_ke());
            setNama_anak(result.getNama_anak());
            setStatus_anak(result.getStatus_anak());
            setTempat_lahir(result.getTempat_lahir());
            setTgl_lahir(result.getTgl_lahir());
            setJenis_kelamin(result.getJenis_kelamin());
            setPendidikan(result.getPendidikan());
            setPekerjaan(result.getPekerjaan());
            setStatus_tunjangan(result.getStatus_tunjangan());
        }
    }
}
