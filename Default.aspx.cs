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
            var costoInizale = 0;
            var idveicolo = DropDownList1.SelectedValue;
            foreach(Veicolo m in Veicolo.ListAuto())
            {
                if(idveicolo == m.ID.ToString())
                {
                    costoInizale += Convert.ToInt32(m.Prezzo);
                    Label2.Text = $" {costoInizale.ToString("c2")}";
                }
    
            }
            var costo = 0;
            foreach(ListItem c in CheckBoxList1.Items)
            {
                if(c.Selected)
                {
                    costo += Convert.ToInt32(c.Value);
                    Label3.Text = $" {costo.ToString("c2")}";
                    
                }
            }
            var garanzia = 0;
            foreach(ListItem g in DropDownList2.Items)
            {
                if (g.Selected)
                {
                    garanzia += Convert.ToInt32(g.Value);
                    Label4.Text = $" {garanzia.ToString("c2")}";
                }
            }
            var totale = costo + garanzia+ costoInizale;
            Label5.Text = $" {totale.ToString("c2")}";
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
            v1.Modello = "BMW M3 Coupe";
            v1.Prezzo = 40000;
            v1.Img = "/Img/bmwM3Coupe.jpg";
            Veicolo v2 = new Veicolo();
            v2.ID = 2;
            v2.Modello = "BMW Serie 3 2021";
            v2.Prezzo = 66000;
            v2.Img = "/Img/bmwSerie3-2021.jpg";
            Veicolo v3 = new Veicolo();
            v3.ID = 3;
            v3.Modello = "BMW Serie 3";
            v3.Prezzo = 55000;
            v3.Img = "/Img/bmwSerie3.jpg";
            Veicolo v4 = new Veicolo();
            v4.ID = 4;
            v4.Modello = "MBW Serie 4";
            v4.Prezzo = 67000;
            v4.Img = "/Img/bmwSerie4.jpg";
            Veicolo v5 = new Veicolo();
            v5.ID = 5;
            v5.Modello = "BMW Serie 5";
            v5.Prezzo = 77000;
            v5.Img = "/Img/bmwSerie5.jpg";
            Veicolo v6 = new Veicolo(); 
            v6.ID = 6;
            v6.Modello = "BMW X5";
            v6.Prezzo = 59000;
            v6.Img = "/Img/bmwX5.jpg";
            List<Veicolo> lista = new List<Veicolo>();
            lista.Add(v1);
            lista.Add(v2);
            lista.Add(v3);
            lista.Add(v4);
            lista.Add(v5);
            lista.Add(v6);
            return lista;

        }
    }
}
