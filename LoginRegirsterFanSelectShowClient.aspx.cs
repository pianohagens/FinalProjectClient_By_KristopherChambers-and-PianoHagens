using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginRegirsterFanSelectShowClient : System.Web.UI.Page
{
    ServiceReference.FinalProjectServiceClient frg = new ServiceReference.FinalProjectServiceClient();
    private object shows;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<string> artits = frg.GetAllArtists().ToList();
            ArtistListDropDownList.DataSource = artits;
            ArtistListDropDownList.DataBind();

            List<string> shows = frg.GetAllShows().ToList();
            ShowNameDropDownList.DataSource = shows;
            ShowNameDropDownList.DataBind();

        }
    }
    ////////////////////ShowNameDropDownList_SelectedIndexChanged///////////////////////
    protected void ShowNameDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {

        ServiceReference.ShowInfo shows = new ServiceReference.ShowInfo();

        ShowNameDropDownList.DataSource = shows;
        ShowNameDropDownList.DataBind();
    }
    //////////////////////////////ArtistListDropDownList////////////////////////////
    protected void ArtistListDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        ServiceReference.ShowInfo artists = new ServiceReference.ShowInfo();

       ArtistListDropDownList.DataSource = artists;
        ArtistListDropDownList.DataBind();
    }


    ////////////////////LoginButton_Click /////////////////////////////////
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        ServiceReference.FanRegister fr = new ServiceReference.FanRegister();

        fr.FanLoginUserName = UserNameTextBox.Text;
        fr.FanLoginUserName = PasswordTextBox.Text;

        int result = frg.Fangistration(fr);
        if (result != 1)
            ResultLabel.Text = "Successfuly Login";
        else
            ResultLabel.Text = "Login Failed, You might need to check your registration status";
    

}


    ////////////////////////RegisterButton_Click   /////////////////////////
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        
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
