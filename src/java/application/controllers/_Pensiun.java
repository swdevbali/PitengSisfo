/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.PensiunModel;

public class _Pensiun extends Controller
{
    private final static String view_page_content = "pensiun\\view_pensiun.jsp";
    private final static String form_page_content = "pensiun\\form_pensiun.jsp";
    public _Pensiun()
    {
        controllerName = "Pensiun";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new PensiunModel();
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
        ChooserModel chooserModel = new ChooserModel("pensiun","idpensiun");
        row = chooserModel.getDataPerPage("select idpensiun as id,pensiun as label from pensiun order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idpensiun");
        super.index("index_choose.jsp");
    }
}
