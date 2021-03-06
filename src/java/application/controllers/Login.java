/*
  HISTORY
  1) Mar 23, 2011 = login controller differ than any other controller
 */

package application.controllers;

import recite18th.controller.Controller;
import application.models.UserAccountModel;
import recite18th.util.ServletUtil;
import recite18th.util.LoginUtil;
import application.config.Config;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.io.IOException;

/*
 * I think this controller, Login, can be make part of the framework, or in autogenerated item
 */
public class Login extends Controller
{
    private final static String body_content = "login.jsp";
    
    public Login()
    {
        isNeedAuthorization = false;
        viewPage = "index.jsp";
    }

    public void doLogin()
    {
        //get form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        //get model from database
        UserAccountModel userAccount = new UserAccountModel();
        userAccount.addCriteria("username", username);
        userAccount.addCriteria("password", password);
        userAccount.get();

        //take action upon retrieval
        request.setAttribute("flash_login_message","");
        if(userAccount.exist())
        {
            LoginUtil.setLogin(request, userAccount);
            ServletUtil.redirect(Config.base_url, request, response);
        }else{
            request.setAttribute("flash_login_message","Informasi login tidak dikenal");
            index();
        }
    }
    
    public void doLogout()
    {
        LoginUtil.clearLogin(request);
        ServletUtil.redirect(Config.base_url, request, response);
    }

    public void index()
    {
        request.setAttribute("body_content",body_content);
        super.index();
    }
}