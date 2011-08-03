/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.AnakModel;

public class _Anak extends Controller
{
    private final static String view_page_content = "anak\\view_anak.jsp";
    private final static String form_page_content = "anak\\form_anak.jsp";
    public _Anak()
    {
        controllerName = "Anak";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new AnakModel();
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
        ChooserModel chooserModel = new ChooserModel("anak","idanak");
        row = chooserModel.getDataPerPage("select idanak as id,anak as label from anak order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idanak");
        super.index("index_choose.jsp");
    }
}
