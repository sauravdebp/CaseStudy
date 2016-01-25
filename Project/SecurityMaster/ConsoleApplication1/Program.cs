using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SecMaster_DAL.DataModel;
using SecMaster_DAL;
using System.Xml;
using System.IO;
using System.Xml.Serialization;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Security> equities = new List<Security>();
            DAL lib = new DAL();
            //equities.Add(new Equity()
            //{
            //    Name = "MSFT",
            //    Description = "Microsoft"
            //});
            //equities.Add(new Equity()
            //{
            //    Name = "APPL",
            //    Description = "APPLE"
            //});
            equities.Add(new CorporateBond()
            {
                Name = "MSFTBOND"
            });
            Console.WriteLine("STARTING....");
            lib.OpenConnection(@"Data Source=saurav-pc\sqlexpress;Initial Catalog=SecurityMaster;Integrated Security=True");
            lib.InsertSecurity(equities);
            lib.CloseConnection();
            Console.WriteLine("DONE");
            Console.ReadKey();
        }
    }
}
