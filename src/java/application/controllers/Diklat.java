/** 
 * 
 */

package application.controllers;
import recite18th.controller.Controller;
import application.models.DiklatModel;

public class Diklat extends _Diklat
{
    public Diklat()
    {
        validationAddRule("jumlah_jam","integer_bigger_than_zero");
    }
}
