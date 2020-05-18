using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using VlasniciParcelaApp.Data;
using VlasniciParcelaApp.Models;

namespace VlasniciParcelaApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly VlasnikDbContext _context;

        public HomeController(ILogger<HomeController> logger, VlasnikDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [Authorize]
        public IActionResult Create()
        {
            return View();
        }

        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Ime,Prezime,OIB,Adresa,Grad,Parcele")] Vlasnik vlasnik)
        {
            if (ModelState.IsValid)
            {
                _context.Add(vlasnik);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(vlasnik);
        }

        public async Task<IActionResult> Search(string searchIme, string searchPrezime, string searchAdresa, string searchOIB, string searchGrad)
        {
            var vlasnici = from v in _context.Vlasnik
                           select v;

            if (!String.IsNullOrEmpty(searchIme))
            {
                vlasnici = vlasnici.Where(v => v.Ime.Contains(searchIme));
            }

            if (!String.IsNullOrEmpty(searchPrezime))
            {
                vlasnici = vlasnici.Where(v => v.Prezime.Contains(searchPrezime));
            }

            if (!String.IsNullOrEmpty(searchAdresa))
            {
                vlasnici = vlasnici.Where(v => v.Adresa.Contains(searchAdresa));
            }

            if (!String.IsNullOrEmpty(searchOIB))
            {
                vlasnici = vlasnici.Where(v => v.OIB.Contains(searchOIB));
            }

            IQueryable<string> gradQuery = from v in _context.Vlasnik
                                           orderby v.Grad
                                           select v.Grad;

            if (!string.IsNullOrEmpty(searchGrad))
            {
                vlasnici = vlasnici.Where(v => v.Grad == searchGrad);
            }

            var gradVM = new GradViewModel
            {
                Gradovi = new SelectList(await gradQuery.Distinct().ToListAsync()),
                Vlasnici = await vlasnici.OrderBy(v => v.Prezime).ThenBy(v => v.Ime).ToListAsync()
            };

            return View(gradVM);
            //return View(await vlasnici.OrderBy(v => v.Prezime).ThenBy(v => v.Ime).ToListAsync());
        }
    }
}
