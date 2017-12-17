using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;

namespace Comp229_Assign04
{
    public partial class ModelPage : System.Web.UI.Page
    {
        List<Models> jsonList;
        string name;
        string path = HttpContext.Current.Server.MapPath("~/Assets/Assign04.json");

        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["name"];
            string data = File.ReadAllText(path);
            jsonList = JsonConvert.DeserializeObject<List<Models>>(data);

            List<Models> model = new List<Models>();
            model.Add(jsonList.FirstOrDefault(index => index.name == name));

            modelDetail.DataSource = model;
            modelDetail.DataBind();

            actionDetail.DataSource = model[0].actions;
            actionDetail.DataBind();

            specAbiDetail.DataSource = model[0].specialAbilities;
            specAbiDetail.DataBind();

        }
    }
}