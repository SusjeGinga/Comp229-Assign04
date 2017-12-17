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
        string newPath = HttpContext.Current.Server.MapPath("~/Assets/Assign04-new.json");

        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["name"];
            string data = File.ReadAllText(path);
            jsonList = JsonConvert.DeserializeObject<List<Models>>(data);

            Models model;
            model = jsonList.FirstOrDefault(index => index.name == name);

            modelName.Text = model.name;
            modelFaction.Text = model.faction;
            modelRank.Text = model.rank.ToString();
            modelBase.Text = model._base.ToString();
            modelSize.Text = model.size.ToString();
            modelDeploymentZone.Text = model.deploymentZone;
            traitsRep.DataSource = model.traits;
            traitsRep.DataBind();
            typeRep.DataSource = model.types;
            typeRep.DataBind();
            defRep.DataSource = model.defenseChart;
            defRep.DataBind();
            modelMobility.Text = model.mobility.ToString();
            modelWillpower.Text = model.willpower.ToString();
            modelResiliance.Text = model.resiliance.ToString();
            modelWounds.Text = model.wounds.ToString();

        }
        protected void updateBtn_Click(object sender, EventArgs e)
        {
            //Action action = new Action
            //{
            //    name = actionNameTxt.Text,
            //    type = "",
            //    rating = 0,
            //    range = ""
            //};
            //List<Action> actionsList = new List<Action> { };
            //actionsList.Add(action);

            //SpecialAbility specialAbility = new SpecialAbility
            //{
            //    name = specNameTxt.Text,
            //    description = ""
            //};
            //List<SpecialAbility> specialAbilityList = new List<SpecialAbility> { };
            //specialAbilityList.Add(specialAbility);


            //statsLists.name = Convert.ToString(modelName.Text);
            //statsLists.faction = Convert.ToString(modelFaction.Text);
            //statsLists.rank = Convert.ToInt32(modelRank.Text);
            //statsLists._base = Convert.ToInt32(modelBase.Text);
            //statsLists.size = Convert.ToInt32(modelSize.Text);
            //statsLists.deploymentZone = Convert.ToString(modelDeploymentZone.Text);
            //statsLists.mobility = Convert.ToInt32(modelMobility.Text);
            //statsLists.willpower = Convert.ToInt32(modelWillpower.Text);
            //statsLists.resiliance = Convert.ToInt32(modelResiliance.Text);
            //statsLists.wounds = Convert.ToInt32(modelWounds.Text);

            Models model = new Models
            {
                name = Convert.ToString(modelName.Text),
                faction = Convert.ToString(modelFaction.Text),
                rank = Convert.ToInt32(modelRank.Text),
                _base = Convert.ToInt32(modelBase.Text),
                size = Convert.ToInt32(modelSize.Text),
                deploymentZone = Convert.ToString(modelDeploymentZone.Text),
                traits = new string[] { "" },
                types = new string[] { "" },
                defenseChart = new string[] { "" },
                mobility = Convert.ToInt32(modelMobility.Text),
                willpower = Convert.ToInt32(modelWillpower.Text),
                resiliance = Convert.ToInt32(modelResiliance.Text),
                wounds = Convert.ToInt32(modelWounds.Text)
                //actions = actionsList,
                //specialAbilities = specialAbilityList,
                //imageUrl = ""
            };

            jsonList.Add(model);
            File.WriteAllText(newPath, JsonConvert.SerializeObject(jsonList));

            Response.Redirect("Default.aspx");
        }
    }
}