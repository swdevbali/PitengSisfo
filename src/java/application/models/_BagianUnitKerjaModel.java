/** 
 * Autogenerated by Recite18th from table piteng.bagian_unit_kerja
 * Don't change this file. Instead, change the derived class BagianUnitKerjaModel
 * 
 */

package application.models;
import recite18th.model.Model;
public class _BagianUnitKerjaModel extends Model
{
    public String kode_bagian_unit_kerja;
    public String bagian_unit_kerja;
    public _BagianUnitKerjaModel()
    {
        tableName="bagian_unit_kerja";
        pkFieldName="kode_bagian_unit_kerja";
        fqn = BagianUnitKerjaModel.class.getName();
        plainClassName = "BagianUnitKerjaModel";
    }
    public void setKode_bagian_unit_kerja(String kode_bagian_unit_kerja)
    {
        this.kode_bagian_unit_kerja=kode_bagian_unit_kerja;
    }
    public String getKode_bagian_unit_kerja()
    {        return this.kode_bagian_unit_kerja;
    }
    public void setBagian_unit_kerja(String bagian_unit_kerja)
    {
        this.bagian_unit_kerja=bagian_unit_kerja;
    }
    public String getBagian_unit_kerja()
    {        return this.bagian_unit_kerja;
    }
    public void get()
    {
        _BagianUnitKerjaModel result = (_BagianUnitKerjaModel) super.getModel();
        if(result!=null)
        {
            setKode_bagian_unit_kerja(result.getKode_bagian_unit_kerja());
            setBagian_unit_kerja(result.getBagian_unit_kerja());
        }
    }
}
