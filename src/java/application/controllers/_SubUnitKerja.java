/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.SubUnitKerjaModel;

public class _SubUnitKerja extends Controller
{
    private final static String view_page_content = "sub_unit_kerja\\view_sub_unit_kerja.jsp";
    private final static String form_page_content = "sub_unit_kerja\\form_sub_unit_kerja.jsp";
    public _SubUnitKerja()
    {
        controllerName = "SubUnitKerja";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new SubUnitKerjaModel();
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
        ChooserModel chooserModel = new ChooserModel("sub_unit_kerja","kode_sub_unit_kerja");
        row = chooserModel.getDataPerPage("select kode_sub_unit_kerja as id,sub_unit_kerja as label from sub_unit_kerja order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "kode_sub_unit_kerja");
        super.index("index_choose.jsp");
    }
}
