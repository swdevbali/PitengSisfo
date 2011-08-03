/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.PrajabatanModel;

public class _Prajabatan extends Controller
{
    private final static String view_page_content = "prajabatan\\view_prajabatan.jsp";
    private final static String form_page_content = "prajabatan\\form_prajabatan.jsp";
    public _Prajabatan()
    {
        controllerName = "Prajabatan";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new PrajabatanModel();
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
        ChooserModel chooserModel = new ChooserModel("prajabatan","idprajabatan");
        row = chooserModel.getDataPerPage("select idprajabatan as id,prajabatan as label from prajabatan order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idprajabatan");
        super.index("index_choose.jsp");
    }
}
