using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginRegirsterClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SubmitRegister();


    }

    protected void SubmitRegister()

    {
        

    }
      
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        ServiceReference.FinalProjectServiceClient frg = new ServiceReference.FinalProjectServiceClient();
        ServiceReference.FanRegister fr = new ServiceReference.FanRegister();

        fr.FanName = RegisterNameTextBox.Text;
        fr.FanEmail = RegisterEmailTextBox.Text;
        fr.FanLoginUserName = RegisterUserNameTextBox.Text;
        fr.FanLoginPasswordPlain = ConfirmPasswordTextBox.Text;
      


        int result = frg.Fangistration(fr);
        if (result != 1)
            RegisterErrorLabel.Text = "Successfuly Registed";
        else
            RegisterErrorLabel.Text = "Register Failed, You might need to check your registration status";



    }

   
}