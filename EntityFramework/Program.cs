using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.VisualBasic.FileIO;
using Mission3.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Mission3
{
    public class Program
    {
        public static void Main(string[] args)
        {
            try
            {
                using (TextFieldParser parser = new(@"D:\Python\scrap\scrap.csv"))
                {
                    parser.TextFieldType = FieldType.Delimited;
                    parser.SetDelimiters(";");

                    MyDbContext BD = new();

                    while (!parser.EndOfData)
                    {
                        Medicament medocs = new();

                        string[] fields = parser.ReadFields();
                        //medocs.Id =  Int32.Parse(fields[0]);
                        medocs.NomProduit = fields[0].ToString();
                        medocs.Description = fields[1].ToString();
                        medocs.Prix = Convert.ToDouble(fields[2]);                        
                        medocs.TypeMedicament = fields[3].ToString();

                        BD.Add(medocs);
                    }
                    BD.SaveChanges();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }
            complete(args);

            CreateHostBuilder(args).Build().Run();

            
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });


        public static void complete(string[] args)
        {
            try
            {
                using (TextFieldParser parser = new(@"D:\Python\scrap\TypeMedicament.csv"))
                {
                    parser.TextFieldType = FieldType.Delimited;
                    parser.SetDelimiters(";");

                    MyDbContext BD = new();

                    while (!parser.EndOfData)
                    {
                        TypeMedicament typeMedocs = new();

                        string[] fields = parser.ReadFields();
                        typeMedocs.Libelle = (fields[0]).ToString();
                        typeMedocs.Designation = fields[1].ToString();

                        BD.Add(typeMedocs);
                    }
                    BD.SaveChanges();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }

            CreateHostBuilder(args).Build().Run();
        }
    }
}
