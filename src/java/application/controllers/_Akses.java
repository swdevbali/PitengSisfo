/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.AksesModel;

public class _Akses extends Controller
{
    private final static String view_page_content = "akses\\view_akses.jsp";
    private final static String form_page_content = "akses\\form_akses.jsp";
    public _Akses()
    {
        controllerName = "Akses";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new AksesModel();
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
        ChooserModel chooserModel = new ChooserModel("akses","Nip");
        row = chooserModel.getDataPerPage("select Nip as id, nama_akses as label from akses order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "Nip");
        super.index("index_choose.jsp");
    }
}
