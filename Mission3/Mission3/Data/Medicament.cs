using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Mission3.Data
{
    public class Medicament
    {
        public int Id { get; set; }
        [MaxLength(50)]
        public string NomProduit { get; set; }
        public double Prix { get; set; }
        public string Description { get; set; }
        [MaxLength(3)]
        public string TypeMedicament { get; set; }
    }
}
