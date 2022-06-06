using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Mission3.Data
{
    public class TypeMedicament
    {
        [Key, MaxLength(3)]
        public string Libelle { get; set; }
        public string Designation { get; set; }
    }
}
