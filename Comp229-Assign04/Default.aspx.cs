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
        List<Models> jsonList;
        string path = HttpContext.Current.Server.MapPath("~/Assets/Assign04.json");
        string newPath = HttpContext.Current.Server.MapPath("~/Assets/Assign04-new.json");

        protected void Page_Load(object sender, EventArgs e)
        {    
            string data = File.ReadAllText(path);
            jsonList = JsonConvert.DeserializeObject<List<Models>>(data);
            allModel.DataSource = jsonList;
            allModel.DataBind();
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            Action action = new Action
            {
                name = actionNameTxt.Text,
                type = "",
                rating = 0,
                range = ""
            };
            List<Action> actionsList = new List<Action> { };
            actionsList.Add(action);

            SpecialAbility specialAbility = new SpecialAbility
            {
                name = specNameTxt.Text,
                description = ""
            };
            List<SpecialAbility> specialAbilityList = new List<SpecialAbility> { };
            specialAbilityList.Add(specialAbility);

            Models model = new Models
            {
                name = nameTxt.Text,
                faction = factionTxt.Text,
                rank = int.Parse(rankTxt.Text),
                _base = int.Parse(baseTxt.Text),
                size = int.Parse(sizeTxt.Text),
                deploymentZone = depZoneTxt.Text,
                traits = new string[] { "" },
                types = new string[] { "" },
                defenseChart = new string[] { "" },
                mobility = 0,
                willpower = 0,
                resiliance = 0,
                wounds = 0,
                actions = actionsList,
                specialAbilities = specialAbilityList,
                imageUrl = ""
            };

            jsonList.Add(model);
            File.WriteAllText(newPath, JsonConvert.SerializeObject(jsonList));

            Response.Redirect("Default.aspx");
        }
        

    }
}