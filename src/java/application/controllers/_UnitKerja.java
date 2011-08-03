/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.UnitKerjaModel;

public class _UnitKerja extends Controller
{
    private final static String view_page_content = "unit_kerja\\view_unit_kerja.jsp";
    private final static String form_page_content = "unit_kerja\\form_unit_kerja.jsp";
    public _UnitKerja()
    {
        controllerName = "UnitKerja";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new UnitKerjaModel();
    }
    public void index()
    {
        request.setAttribute("body_content",view_page_content);
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
        ChooserModel chooserModel = new ChooserModel("unit_kerja","Idunit_Kerja");
        row = chooserModel.getDataPerPage("select Idunit_Kerja as id, nama_unit_kerja as label from unit_kerja order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "Idunit_Kerja");
        super.index("index_choose.jsp");
    }
}
