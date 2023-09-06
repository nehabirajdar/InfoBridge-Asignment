using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web;
using System.Xml.Linq;
using System.Windows;

namespace InfoBridge_Assignment
{
    public partial class Employee : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        public Employee()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["defaultconnection"].ConnectionString;
            con= new SqlConnection(connectionString);
        }

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetEmployeeList();
            }
        }

       
        //Clear form
        public void Clear_All()
        {
            txtId.Text = "";
            txtName.Text = "";
            drpSex.SelectedValue = drpSex.Items[0].ToString();
            txtPhone.Text = "";
            txtDateOfBirth.Text = DateTime.Today.Date.ToString();
            txtAddress.Text = "";
            lblMessage.Text = "";
        }




        //Add Employee
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
               
                int id = int.Parse(txtId.Text);
                string name = txtName.Text, sex = drpSex.Text, phone = txtPhone.Text,address=txtAddress.Text, dateofbirth = txtDateOfBirth.Text;
                string image = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("EmployeeImg/") + image);
                string qry = "Insert into Employee values(@Id,@Name,@DateOfBirth,@Sex,@Phone,@Address,@Image)";
                cmd = new SqlCommand(qry, con);
                
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@DateOfBirth", dateofbirth);
                cmd.Parameters.AddWithValue("@Sex", sex);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Image", image);
                con.Open();
                
                cmd.ExecuteNonQuery();
                con.Close();
                lblError1.Text = "Successfully added";

                GetEmployeeList();
                Clear_All();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        
        //view all employee
        void GetEmployeeList()
        {

            string qry = "Select * from Employee";
            cmd = new SqlCommand(qry, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }
        
        //View by Id
        protected void btnView_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(txtId.Text);
                string qry = "SELECT * FROM Employee WHERE Id = @Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
                else
                {
                    // Handle case where no records were found for the given id.
                    // You can display a message or take appropriate action.
                }
                reader.Close();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                con.Close();
            }
        }
        //Edit by Id
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try { 
       
            int id = int.Parse(txtId.Text);
            string name = txtName.Text, sex = drpSex.Text, phone = txtPhone.Text,address=txtAddress.Text, dateofbirth = txtDateOfBirth.Text,
            image = FileUpload1.FileName;
            string qry = "Update Employee set name=@Name,dateofbirth=@DateOfBirth,sex=@Sex,phone=@Phone,address=@address,image=@Image where @Id=id";
            cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@DateOfBirth", dateofbirth);
                cmd.Parameters.AddWithValue("@Sex", sex);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Image", image);
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
                lblError2.Text = "Successfully edited";


                GetEmployeeList();
            Clear_All();

            }
            catch (Exception ex)
            {
            }
        }
        
        //Delete by Id
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                
                int id = int.Parse(txtId.Text);
                string qry = "Delete Employee Where @Id=id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                
                cmd.ExecuteNonQuery();
                con.Close();

                lblError3.Text = "Successfully deleted";

                GetEmployeeList();
                Clear_All();
            }
            catch(Exception ex)
            {
               
            }
        }
    }
}
    
