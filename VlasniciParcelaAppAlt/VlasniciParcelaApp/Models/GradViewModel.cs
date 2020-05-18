using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VlasniciParcelaApp.Models
{
    public class GradViewModel
    {
        public List<Vlasnik> Vlasnici { get; set; }
        public SelectList Gradovi { get; set; }
        public string SearchGrad { get; set; }
    }
}
