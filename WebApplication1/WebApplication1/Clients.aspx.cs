using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class Clients_Abdel : System.Web.UI.Page
    {
        private string ChaineConnet = "Data Source=DESKTOP-UAL0COE;Initial Catalog=Projet_Goupe;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("Vider les champs");
            TextBoxcode.Text = "";
            TextBoxnom.Text = "";
            textboxprenom.Text = "";
            TextBoxcodepostal.Text = "";
            TextBoxcommune.Text = "";
            TextBoxadresse.Text = "";
            TextBoxdatedenaissance.Text = "";
            TextBoxmail.Text = "";
        }

        protected void BtAjouter_Click(object sender, EventArgs e)
        {
            SqlConnection sqlconn = new SqlConnection(ChaineConnet);
            SqlCommand cmd;
            string sSQL;
            sSQL = "INSERT INTO [Ficheclients] ([code],[nom],[prenoms],[codepostal],[commune],[adresse],[datenaissance],[mail]) VALUES ";
            sSQL += "(";
            sSQL += "'" + TextBoxcode.Text + "',";
            sSQL += "'" + TextBoxnom.Text + "',";
            sSQL += "'" + textboxprenom.Text + "',";
            sSQL += "'" + TextBoxcodepostal.Text + "',";
            sSQL += "'" + TextBoxcommune.Text + "',";
            sSQL += "'" + TextBoxadresse.Text + "',";
            sSQL += "'" + TextBoxdatedenaissance.Text + "',";
            sSQL += "'" + TextBoxmail.Text + "'";
            sSQL += ")";

            cmd = new SqlCommand(sSQL, sqlconn);
            cmd.CommandType = CommandType.Text;

            try
            {
                sqlconn.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error Generated. Details: " + ex.ToString());
            }
            finally
            {
                sqlconn.Close();
            }


        }

        //protected void Button1_Click1(object sender, EventArgs e)
        //{

        //}

        protected void Buttondelete(object sender, EventArgs e)
        {
            
                DialogResult result;
                result = MessageBox.Show("Etes-vous sur de vouloir supprimer le client ?", "Confirmation", MessageBoxButtons.YesNo);

                if (result == DialogResult.Yes)
                {
                    SqlConnection sqlconn = new SqlConnection(ChaineConnet);//je me conecte a ma base de donné
                    SqlCommand cmd;
                    string sSQL;

                    sSQL = "DELETE FROM [Ficheclients] where code ='" + TextBoxcode.Text + "'";//pour supprimer la ligne selectionné dans ma base de donner
                    cmd = new SqlCommand(sSQL, sqlconn);

                    cmd.CommandType = CommandType.Text;

                    SqlDataReader DataRead;
                    sqlconn.Open();
                    DataRead = cmd.ExecuteReader();
                }
                    TextBoxcode.Text = null;
                    TextBoxnom.Text = null;
                    textboxprenom.Text = null;
                    TextBoxcodepostal.Text = null;
                    TextBoxcommune.Text = null;
                    TextBoxadresse.Text = null;
                    TextBoxdatedenaissance.Text = null;
                    TextBoxmail.Text = null;

            GridView1.DataBind();
            //textBoxNomPrenom.Text = null;
            //textBoxCodeClient.Text = null;
            //textBoxAdresseMail.Text = null;
            //textBoxTelPortable.Text = null;
            //textBoxTelFixe.Text = null;
            //textBoxPasseport.Text = null;
        }

        //private void buttonQuitter_Click(object sender, EventArgs e)
        //    {
        //        DialogResult result;
        //        result = MessageBox.Show("Etes-vous sur de vouloir quitter ?", "Confirmation", MessageBoxButtons.YesNo);

        //        if (result == DialogResult.Yes)
        //            this.Close();
        //    }

        //}
    }
}
