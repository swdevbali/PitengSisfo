/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.JabatanModel;

public class _Jabatan extends Controller
{
    private final static String view_page_content = "jabatan\\view_jabatan.jsp";
    private final static String form_page_content = "jabatan\\form_jabatan.jsp";
    public _Jabatan()
    {
        controllerName = "Jabatan";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new JabatanModel();
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
        ChooserModel chooserModel = new ChooserModel("jabatan","idjabatan");
        row = chooserModel.getDataPerPage("select idjabatan as id,jabatan as label from jabatan order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idjabatan");
        super.index("index_choose.jsp");
    }
}
