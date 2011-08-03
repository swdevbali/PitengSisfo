/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.PendidikanModel;

public class _Pendidikan extends Controller
{
    private final static String view_page_content = "pendidikan\\view_pendidikan.jsp";
    private final static String form_page_content = "pendidikan\\form_pendidikan.jsp";
    public _Pendidikan()
    {
        controllerName = "Pendidikan";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new PendidikanModel();
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
        ChooserModel chooserModel = new ChooserModel("pendidikan","idpendidikan");
        row = chooserModel.getDataPerPage("select idpendidikan as id,pendidikan as label from pendidikan order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idpendidikan");
        super.index("index_choose.jsp");
    }
}
