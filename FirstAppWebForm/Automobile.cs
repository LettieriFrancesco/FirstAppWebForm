using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstAppWebForm
{
    public class Automobile
    {
        public string Modello { get; set; }
        public double PrezzoBase { get; set; }
        public double VerniceMetallizzata { get; set; }
        public double FariXeno { get; set; }
        public double NavigazioneSatellitare { get; set; }
        public double LineAssistant { get; set; }
        public double RuotaDiScorta { get; set; }
        public double SediliPelle { get; set; }
        public double VolantePelle { get; set; }
        public string Image { get; set; }

        public static List<Automobile> Automobili = new List<Automobile>();
        public static void AutomobiliCreate()
        {
            Automobile automobile1 = new Automobile("Audi A7 3.0 Sline", 65000, "AudiA7.jpg");
            Automobile automobile2 = new Automobile("BMW 440I Groun Coupè", 92000, "Bmw4.jpg");
            Automobile automobile3 = new Automobile("Porsche 911 Carrera 4S", 157500, "Porsche911.png");
            Automobile automobile4 = new Automobile("Mercedes-Benz AMG GT", 148000, "mercedsAMGgt.png");
            Automobili.Add(automobile1);
            Automobili.Add(automobile2);
            Automobili.Add(automobile3);
            Automobili.Add(automobile4);
        }
       

        public Automobile() 
        {
            Automobili.Clear();
            AutomobiliCreate();
        }
        public Automobile(string _modello, double _prezzoBase, string image) 
        {
            Modello = _modello;
            PrezzoBase = _prezzoBase;
            Image =image;
        }


        public void AggiungiAccessori(bool _vernice, bool _fariXeno, bool _navigazioneSatellitare, bool _lineAssistant, bool _ruotaScorta, bool _sediliPelle, bool _volantePelle)
        {
            VerniceMetallizzata = _vernice ? 300 : 0;
            FariXeno = _fariXeno ? 180 : 0;
            NavigazioneSatellitare = _navigazioneSatellitare ? 1800 : 0;
            LineAssistant = _lineAssistant ? 2200 : 0;
            RuotaDiScorta = _ruotaScorta ? 155 : 0;
            SediliPelle = _sediliPelle ? 700 : 0;
            VolantePelle = _volantePelle ? 700 : 0;
        }
    }
}