/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.MutasiModel;

public class _Mutasi extends Controller
{
    private final static String view_page_content = "mutasi\\view_mutasi.jsp";
    private final static String form_page_content = "mutasi\\form_mutasi.jsp";
    public _Mutasi()
    {
        controllerName = "Mutasi";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new MutasiModel();
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
        ChooserModel chooserModel = new ChooserModel("mutasi","idmutasi");
        row = chooserModel.getDataPerPage("select idmutasi as id,mutasi as label from mutasi order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idmutasi");
        super.index("index_choose.jsp");
    }
}
