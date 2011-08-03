/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.KursusPenataranModel;

public class _KursusPenataran extends Controller
{
    private final static String view_page_content = "kursus_penataran\\view_kursus_penataran.jsp";
    private final static String form_page_content = "kursus_penataran\\form_kursus_penataran.jsp";
    public _KursusPenataran()
    {
        controllerName = "KursusPenataran";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new KursusPenataranModel();
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
        ChooserModel chooserModel = new ChooserModel("kursus_penataran","idkursus_penataran");
        row = chooserModel.getDataPerPage("select idkursus_penataran as id,kursus_penataran as label from kursus_penataran order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "idkursus_penataran");
        super.index("index_choose.jsp");
    }
}
