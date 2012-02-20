/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package application.controllers;

import application.models.UserAccountModel;
import recite18th.controller.Controller;
import recite18th.library.Db;

/**
 *
 * @author Pitur
 */
public class Profil extends Controller {

    private final static String body_content = "profil.jsp";

    public Profil() {
        isNeedAuthorization = false;
        viewPage = "index.jsp";
    }

    public void index()
    {
        UserAccountModel userAccount = (UserAccountModel) request.getSession().getAttribute("user_credential");
        request.setAttribute("body_content",body_content);
        request.setAttribute("username", userAccount.getUsername());
        request.setAttribute("nip", userAccount.getNip());
        super.index();
    }

    public void saveProfil()
    {
        String nip = request.getParameter("nip");
        String username=request.getParameter("username");
        String password_lama = request.getParameter("password_lama");
        String password_baru = request.getParameter("password_baru");
        String password_baru_ulang = request.getParameter("password_baru_ulang");

        UserAccountModel userAccount=new UserAccountModel();
        userAccount.addCriteria("nip", nip);
        userAccount.get();

        String message="";
        if(!userAccount.getPassword().equals(password_lama))
        {
            message="Password lama tidak sesuai";
        }else if(!password_baru.equals(password_baru_ulang))
        {
            message="Konfirmasi password baru tidak sesuai";
        }else if(password_baru.equals("")){
            message="Password baru tidak boleh kosong";
        }
        else
        {
            Db.executeQuery("update user_account set username='" + username + "',password='" + password_baru + "' where nip = '" + nip + "'");
            message="Data berhasil diupdate";
        }



        request.setAttribute("message", message);
        index();
    }
}
