using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestClientJson
{
    public partial class TesteJson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (rdMetodoEnvio.SelectedIndex > 0)
            {
                PnlPost.Visible = (rdMetodoEnvio.SelectedValue == "Post");
            }
            else
            {
                PnlPost.Visible = false;
            }

            if (!IsPostBack)
            {
            }
        }

        protected void btnExecutar_Click(object sender, EventArgs e)
        {
            string url = string.Empty;

            if (!string.IsNullOrEmpty(txtUrl.Text))
            {
                url = txtUrl.Text;
                var request = System.Net.HttpWebRequest.Create(url);

                if (PnlPost.Visible)
                {
                    request.Method = "POST";
                    string postData = txtParametrosPost.Text;
                    byte[] byteArray = Encoding.UTF8.GetBytes(postData);
                    request.ContentType = "application/json";
                    request.ContentLength = byteArray.Length;
                    Stream dataStream = request.GetRequestStream();
                    dataStream.Write(byteArray, 0, byteArray.Length);
                    dataStream.Close();
                }
                else
                    request.Method = "GET";

                var response = request.GetResponse();
                var streamReader = new System.IO.StreamReader(response.GetResponseStream());
                var json = streamReader.ReadToEnd();

                streamReader.Close();
                response.Close();

                if (json != null)
                    txtRetorno.Text = json.ToString();
            }
            else
                txtRetorno.Text = "URL Invalida.";


        }

        protected void rdMetodoEnvio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}