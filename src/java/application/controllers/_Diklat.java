/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.DiklatModel;

public class _Diklat extends Controller
{
    private final static String view_page_content = "diklat\\view_diklat.jsp";
    private final static String form_page_content = "diklat\\form_diklat.jsp";
    public _Diklat()
    {
        controllerName = "Diklat";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new DiklatModel();
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
        ChooserModel chooserModel = new ChooserModel("diklat","iddiklat");
        row = chooserModel.getDataPerPage("select iddiklat as id,diklat as label from diklat order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "iddiklat");
        super.index("index_choose.jsp");
    }
}
