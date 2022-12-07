using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (Veicolo x in Veicolo.ListAuto())
                {
                    ListItem l = new ListItem();
                    l.Text = x.Modello;
                    l.Value = x.ID.ToString();
                    DropDownList1.Items.Add(l);

                }
            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var idx = DropDownList1.SelectedValue;
            foreach(Veicolo z in Veicolo.ListAuto())
            {
                if(idx == z.ID.ToString())
                {
                    Label1.Text = $"Il prezzo inizale è di: {z.Prezzo.ToString("c2")}";
                    Image1.ImageUrl = z.Img;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var costo = 0;
            foreach(ListItem c in CheckBoxList1.Items)
            {
                if(c.Selected)
                {
                    costo += Convert.ToInt32(c.Value);
                }
            }
        }
    }




    public class Veicolo
    {
        public int ID { get; set; }
        public string Modello { get; set; }
        public int Prezzo { get; set; }
        public string Img { get; set; }

        public static List<Veicolo> ListAuto()
        {
            Veicolo v1 = new Veicolo();
            v1.ID = 1;
            v1.Modello = "BMW Serie 1";
            v1.Prezzo = 40000;
            v1.Img = "/Img/bmwSerie1.jpg";
            Veicolo v2 = new Veicolo();
            v2.ID = 2;
            v2.Modello = "BMW X6";
            v2.Prezzo = 66000;
            v2.Img = "/Img/bmwX6.jpg";
            List<Veicolo> lista = new List<Veicolo>();
            lista.Add(v1);
            lista.Add(v2);
            return lista;

        }
    }
}
