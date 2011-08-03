/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.CutiModel;

public class _Cuti extends Controller
{
    private final static String view_page_content = "cuti\\view_cuti.jsp";
    private final static String form_page_content = "cuti\\form_cuti.jsp";
    public _Cuti()
    {
        controllerName = "Cuti";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new CutiModel();
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
        ChooserModel chooserModel = new ChooserModel("cuti","idcuti");
        row = chooserModel.getDataPerPage("select idcuti as id,cuti as label from cuti order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idcuti");
        super.index("index_choose.jsp");
    }
}
