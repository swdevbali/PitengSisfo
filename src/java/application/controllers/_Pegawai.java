/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import recite18th.model.ChooserModel;
import application.models.PegawaiModel;

public class _Pegawai extends Controller
{
    private final static String view_page_content = "pegawai\\view_pegawai.jsp";
    private final static String form_page_content = "pegawai\\form_pegawai.jsp";
    public _Pegawai()
    {
        controllerName = "Pegawai";
        isNeedAuthorization = true;
        viewPage = "index.jsp";
        formPage = "index.jsp";
        modelForm = new PegawaiModel();
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
        ChooserModel chooserModel = new ChooserModel("pegawai","nip");
        row = chooserModel.getDataPerPage("select nip as id,nama_pegawai as label from pegawai order by label");
        request.setAttribute("row", row);
        request.setAttribute("choose_pkFieldName", "nip");
        super.index("index_choose.jsp");
    }
}
