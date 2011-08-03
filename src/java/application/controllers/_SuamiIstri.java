/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.SuamiIstriModel;

public class _SuamiIstri extends Controller
{
    private final static String view_page_content = "suami_istri\\view_suami_istri.jsp";
    private final static String form_page_content = "suami_istri\\form_suami_istri.jsp";
    public _SuamiIstri()
    {
        controllerName = "SuamiIstri";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new SuamiIstriModel();
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
        ChooserModel chooserModel = new ChooserModel("suami_istri","idsuami_istri");
        row = chooserModel.getDataPerPage("select idsuami_istri as id,suami_istri as label from suami_istri order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idsuami_istri");
        super.index("index_choose.jsp");
    }
}
