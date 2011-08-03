/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.NaikPangkatModel;

public class _NaikPangkat extends Controller
{
    private final static String view_page_content = "naik_pangkat\\view_naik_pangkat.jsp";
    private final static String form_page_content = "naik_pangkat\\form_naik_pangkat.jsp";
    public _NaikPangkat()
    {
        controllerName = "NaikPangkat";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new NaikPangkatModel();
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
        ChooserModel chooserModel = new ChooserModel("naik_pangkat","idpangkat");
        row = chooserModel.getDataPerPage("select idpangkat as id,naik_pangkat as label from naik_pangkat order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idpangkat");
        super.index("index_choose.jsp");
    }
}
