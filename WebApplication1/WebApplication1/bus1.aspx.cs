using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Windows;
using System.Windows.Forms;


namespace WebApplication1
{
    public partial class bus1 : System.Web.UI.Page
    {
        private string ChaineConnet = "Data Source=DESKTOP-UAL0COE;Initial Catalog=Projet_Goupe;Integrated Security=True";

        //public string ChaineConnet1 { get => ChaineConnet2; set => ChaineConnet2 = value; }
        //public string ChaineConnet2 { get => ChaineConnet; set => ChaineConnet = value; }

        protected void Page_Load(object sender, EventArgs e)
        {
            


        }

        protected void BtnAjouter_Click(object sender, EventArgs e)
        {
            SqlConnection sqlconn = new SqlConnection(ChaineConnet);
            SqlCommand cmd;
            string sSQL;
            sSQL = "INSERT INTO [M_bus] ( [code_bus] , [Matricule_bus], [Designation]) VALUES ";
            sSQL += "(";
            sSQL += "'" + TextBoxcode.Text + "',";
            sSQL += "'" + TextBoxmatricule.Text + "',";
            sSQL += "'" + TextBoxdesignation.Text + "'";
            sSQL += ")";

            cmd = new SqlCommand(sSQL, sqlconn);
            cmd.CommandType = CommandType.Text;

            try
            {
                sqlconn.Open();
                cmd.ExecuteNonQuery();
                //GridView1.DataBind();
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

        protected void BtnSupprimerClick(object sender, EventArgs e)
        {
            DialogResult result;
            result = MessageBox.Show("Etes-vous sur de vouloir supprimer le client ?", "Confirmation", MessageBoxButtons.YesNo);

            if (result == DialogResult.Yes)
            {
                SqlConnection sqlconn = new SqlConnection(ChaineConnet);//je me conecte a ma base de donné
                SqlCommand cmd;
                string sSQL;

                sSQL = "DELETE FROM [M_bus] where code_bus ='" + TextBoxcode.Text + "'";//pour supprimer la ligne selectionné dans ma base de donner
                cmd = new SqlCommand(sSQL, sqlconn);

                cmd.CommandType = CommandType.Text;

                SqlDataReader DataRead;
                sqlconn.Open();
                DataRead = cmd.ExecuteReader();
            }
            TextBoxcode.Text = null;
            TextBoxmatricule.Text = null;
            TextBoxdesignation.Text = null;
            

            //GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBoxcode.Text = null;
            TextBoxmatricule.Text = null;
            TextBoxdesignation.Text = null;


        }
    }
    
}