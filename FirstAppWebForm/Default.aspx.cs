using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstAppWebForm
{
    public partial class Default : System.Web.UI.Page
    {
      
    
        protected void Page_Load(object sender, EventArgs e)
        {
          Automobile automobile = new Automobile();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string modelloSelezionato = DropDownList1.SelectedItem.Value;

            Automobile automobile = Automobile.Automobili.FirstOrDefault(a => a.Modello == modelloSelezionato);
            if(automobile != null)
            {
                double PrezzoBaseAuto = automobile.PrezzoBase;
                double totaleComplessivo = PrezzoBaseAuto;
                double totaleOptional = 0;
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    {
                        double valoreOptional = double.Parse(item.Value);
                        totaleOptional += valoreOptional;
                    }
                }
                int indiceSelezionato = DropDownList2.SelectedIndex;
                int anniGaranzia = 0;
                if (indiceSelezionato > 0)
                {
                    anniGaranzia = indiceSelezionato * 120;
                    totaleComplessivo += anniGaranzia;
                }
                totaleComplessivo += totaleOptional;
                totaleAuto.InnerHtml = totaleComplessivo.ToString("N");
                totaleOptionalauto.InnerHtml = totaleOptional.ToString("N");
                totaleGaranziaAuto.InnerHtml = anniGaranzia.ToString("N");

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedItem.Value;
           
            string ModelloAuto = "";
            
           
            foreach(Automobile autovetture in Automobile.Automobili)
            {
               if(selectedValue == autovetture.Modello)
                {
                    ModelloAuto = $"{autovetture.Modello} <br/> Prezzo modello base: ${autovetture.PrezzoBase.ToString("N")}";
                    Image1.ImageUrl = $"~/Content/img/{autovetture.Image}";
                }
              
                
            }
            modelloautomobile.InnerHtml = $"{ModelloAuto}";
            
        }
    }
}