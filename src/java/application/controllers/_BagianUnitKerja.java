/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.BagianUnitKerjaModel;

public class _BagianUnitKerja extends Controller
{
    private final static String view_page_content = "bagian_unit_kerja\\view_bagian_unit_kerja.jsp";
    private final static String form_page_content = "bagian_unit_kerja\\form_bagian_unit_kerja.jsp";
    public _BagianUnitKerja()
    {
        controllerName = "BagianUnitKerja";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new BagianUnitKerjaModel();
    }
    public void index()
    {
        request.setAttribute("body_content",view_page_content);
        request.setAttribute("active_controller",controllerName);
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        super.index();
    }
    public void input(String pkFieldValue)
    {
        request.setAttribute("body_content",form_page_content);
        isNeedAuthorization = true;
        super.input(pkFieldValue);
    }
    public void chooseView()
    {
        isNeedAuthorization = true;
        ChooserModel chooserModel = new ChooserModel("bagian_unit_kerja","kode_bagian_unit_kerja");
        row = chooserModel.getDataPerPage("select kode_bagian_unit_kerja as id,bagian_unit_kerja as label from bagian_unit_kerja order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "kode_bagian_unit_kerja");
        super.index("index_choose.jsp");
    }
}
