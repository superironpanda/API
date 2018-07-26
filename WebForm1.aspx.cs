using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropShipAPI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var client = new RestClient("http://gcloud-api.wirelessbro.com/api/v1/product/public/inventory?userNumber=203008&userToken=292356a23b8069e04e5ca72827515bf5&warehouseCode=F406");
            var request = new RestRequest(Method.POST);
            request.AddHeader("Postman-Token", "851dbab3-544f-4fb1-83e2-4d771ff524cb");
            request.AddHeader("Cache-Control", "no-cache");
            request.AddHeader("Content-Type", "application/json");
            request.AddParameter("undefined", "{\r\n\t\"products\":[{\r\n\t\t\"packages\":[{\r\n\t\t\t\"sku\":\"B0736J539T\",\r\n\t\t\t\"upc\":\"B0736J539T\",\r\n\t\t\t\"qty\":3\r\n\t\t}]\r\n\t}]\r\n}\r\n", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            Label1.Text = response.Content;
        }
    }
}