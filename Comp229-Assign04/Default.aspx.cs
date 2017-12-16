using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using System.IO;


namespace Comp229_Assign04
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = HttpContext.Current.Server.MapPath("~/Assets/Assign04.json");
            string data = File.ReadAllText(path);
            var collection = JsonConvert.DeserializeObject<List<Models>>(data);
            allModel.DataSource = collection;
            allModel.DataBind();
        }

    }
}