/** 
 * 
 */

package application.models;
import recite18th.model.Model;
import application.models._UserAccountModel;
import recite18th.model.Roleable;
/*
 * By implements Roleable, this class can participate in authorization scheme
 * Offcourse, this class must implement getRole and setRole, which are done if
 * the underlying table having role field :)
 */
public class UserAccountModel extends _UserAccountModel implements Roleable
{
    public UserAccountModel()
    {
        super();
    } 
}
