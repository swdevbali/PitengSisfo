/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.UserAccountModel;

public class _UserAccount extends Controller
{
    private final static String view_page_content = "user_account\\view_user_account.jsp";
    private final static String form_page_content = "user_account\\form_user_account.jsp";
    public _UserAccount()
    {
        controllerName = "UserAccount";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new UserAccountModel();
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
        ChooserModel chooserModel = new ChooserModel("user_account","nip");
        row = chooserModel.getDataPerPage("select nip as id,user_account as label from user_account order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "nip");
        super.index("index_choose.jsp");
    }
}
