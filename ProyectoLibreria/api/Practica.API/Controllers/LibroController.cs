using AutoMapper;
using Entities.Entities;
using Microsoft.AspNetCore.Mvc;
using Practica.BussinesLogic.Servicios;
using Practica.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Practica.API.Controllers
{
    /// <summary>
    /// Controlador para gestionar operaciones relacionadas con libros.
    /// </summary>
    [ApiController]
    [Route("API/[Controller]")]
    public class LibrosController : Controller
    {
        private readonly GeneralServicio _generalServicio;
        private readonly IMapper _mapper;

        /// <summary>
        /// Constructor que inicializa los servicios necesarios.
        /// </summary>
        public LibrosController(GeneralServicio generalServicio, IMapper mapper)
        {
            _mapper = mapper;
            _generalServicio = generalServicio;
        }

        /// <summary>
        /// Obtiene la lista de libros.
        /// </summary>
        [HttpGet("List")]
        public IActionResult Index()
        {
            var list = _generalServicio.LibroList();
            return Ok(list.Data);
        }

        /// <summary>
        /// Obtiene los detalles de un libro por su ID.
        /// </summary>
        [HttpGet("Details/{id}")]
        public IActionResult Details(int id)
        {
            var modelo = _generalServicio.Detalles(id);
            var detail = modelo.First();
            return Ok(detail);
        }

        /// <summary>
        /// Crea un nuevo libro en la base de datos.
        /// </summary>
        [HttpPost("Create")]
        public IActionResult Create(LibroViewModel item)
        {
            var model = _mapper.Map<tbLibros>(item);
            var modelo = new tbLibros()
            {
                Libr_titulo = item.Libr_titulo,
                Libr_ano_publicacion = item.Libr_ano_publicacion,
                Gene_Id = item.Gene_Id,
                auto_Id = item.auto_Id,
                Libr_UsuarioCreacion = item.Libr_UsuarioCreacion
            };
            var prueba = _generalServicio.InsertarLibro(modelo);
            return prueba.Code == 200 ? Ok(prueba) : BadRequest();
        }

        /// <summary>
        /// Edita un libro existente.
        /// </summary>
        [HttpPut("Edit/{id}")]
        public IActionResult Edit(int id, LibroViewModel item)
        {
            var model = _mapper.Map<tbLibros>(item);
            var modelo = new tbLibros()
            {
                Libr_id = item.Libr_id,
                Libr_titulo = item.Libr_titulo,
                Libr_ano_publicacion = item.Libr_ano_publicacion,
                Gene_Id = item.Gene_Id,
                auto_Id = item.auto_Id,
                Libr_UsuarioModificacion = item.Libr_UsuarioModificacion
            };
            var prueba = _generalServicio.ActualizarLibro(modelo);
            return prueba.Code == 200 ? Ok(prueba) : BadRequest();
        }

        /// <summary>
        /// Elimina un libro por su ID.
        /// </summary>
        [HttpDelete("Delete/{id}")]
        public IActionResult Delete(int id)
        {
            var listado = _generalServicio.EliminarLibro(id);
            return Ok(listado);
        }

        /// <summary>
        /// Obtiene la lista de autores.
        /// </summary>
        [HttpGet("ListAutores")]
        public IActionResult ListAutores()
        {
            var list = _generalServicio.Ddlautores();
            return Ok(list.Data);
        }

        /// <summary>
        /// Obtiene la lista de géneros.
        /// </summary>
        [HttpGet("ListGeneros")]
        public IActionResult ListGeneros()
        {
            var list = _generalServicio.DdlGeneros();
            return Ok(list.Data);
        }

        /// <summary>
        /// Obtiene detalles de un autor por su ID.
        /// </summary>
        [HttpGet("autoresdetalle/{id}")]
        public IActionResult autoresdetalle(int id)
        {
            var modelo = _generalServicio.autoresdetalle(id);
            var detail = modelo.First();
            return Ok(detail);
        }

        /// <summary>
        /// Obtiene detalles de un género por su ID.
        /// </summary>
        [HttpGet("generodetalle/{id}")]
        public IActionResult Generosdetalle(int id)
        {
            var modelo = _generalServicio.Generosdetalle(id);
            var detail = modelo.First();
            return Ok(detail);
        }
    }
}
