using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace VlasniciParcelaApp.Models
{
    public class Vlasnik
    {
        public int Id { get; set; }

        [MaxLength(75), Required(ErrorMessage = "Morate unesti ime vlasnika.")]
        public string Ime { get; set; }

        [MaxLength(75), Required(ErrorMessage = "Morate unesti prezime vlasnika.")]
        public string Prezime { get; set; }

        [StringLength(11, MinimumLength = 11, ErrorMessage = "OIB mora sadržavati 11 znamenki."), Required(ErrorMessage = "Morate unesti vlasnikov OIB."), RegularExpression("^[0-9]*$", ErrorMessage = "OIB može sadržavati samo brojčane znamenke.")]
        public string OIB { get; set; }

        [MaxLength(100), Required(ErrorMessage = "Morate unesti vlasnikovu adresu stanovanja.")]
        public string Adresa { get; set; }

        [MaxLength(75), Required(ErrorMessage = "Morate unesti vlasnikov grad stanovanja.")]
        public string Grad { get; set; }

        [MaxLength(500), Required(ErrorMessage = "Morate unesti parcele koje vlasnik posjeduje.")]
        public string Parcele { get; set; }
    }
}
