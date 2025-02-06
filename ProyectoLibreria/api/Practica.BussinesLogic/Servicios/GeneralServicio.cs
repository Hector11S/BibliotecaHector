using Entities.Entities;
using Practica.DataAcces.Repositorio;
using SistemaAsilos.BussinesLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practica.BussinesLogic.Servicios
{
    /// <summary>
    /// Servicio general para la gestión de libros.
    /// </summary>
    public class GeneralServicio
    {
        private readonly LibroRepositorio _libroRepositorio;

        /// <summary>
        /// Constructor que inicializa el repositorio de libros.
        /// </summary>
        /// <param name="libroRepositorio">Instancia del repositorio de libros.</param>
        public GeneralServicio(LibroRepositorio libroRepositorio)
        {
            _libroRepositorio = libroRepositorio;
        }

        #region Libros Civiles

        /// <summary>
        /// Obtiene la lista de libros.
        /// </summary>
        public ServiceResult LibroList()
        {
            var result = new ServiceResult();
            try
            {
                var list = _libroRepositorio.List();
                return result.Ok(list);
            }
            catch (Exception ex)
            {
                return result.Error(ex.Message);
            }
        }

        /// <summary>
        /// Obtiene la lista de autores.
        /// </summary>
        public ServiceResult Ddlautores()
        {
            var result = new ServiceResult();
            try
            {
                var list = _libroRepositorio.Ddlautores();
                return result.Ok(list);
            }
            catch (Exception ex)
            {
                return result.Error(ex.Message);
            }
        }

        /// <summary>
        /// Obtiene la lista de géneros.
        /// </summary>
        public ServiceResult DdlGeneros()
        {
            var result = new ServiceResult();
            try
            {
                var list = _libroRepositorio.DdlGeneros();
                return result.Ok(list);
            }
            catch (Exception ex)
            {
                return result.Error(ex.Message);
            }
        }

        /// <summary>
        /// Inserta un nuevo libro en la base de datos.
        /// </summary>
        public ServiceResult InsertarLibro(tbLibros item)
        {
            var result = new ServiceResult();
            try
            {
                var response = _libroRepositorio.Insertar(item);
                if (response.CodeStatus > 0)
                {
                    return result.Ok(response);
                }
                else
                {
                    response.MessageStatus = (response.CodeStatus == 0) ? "401 Error de Consulta" : response.MessageStatus;
                    return result.Error(response);
                }
            }
            catch (Exception ex)
            {
                return result.Error(ex.Message);
            }
        }

        /// <summary>
        /// Actualiza un libro existente en la base de datos.
        /// </summary>
        public ServiceResult ActualizarLibro(tbLibros item)
        {
            var result = new ServiceResult();
            try
            {
                var response = _libroRepositorio.Actualizar(item);
                if (response.CodeStatus > 0)
                {
                    return result.Ok(response);
                }
                else
                {
                    response.MessageStatus = (response.CodeStatus == 0) ? "401 Error de Consulta" : response.MessageStatus;
                    return result.Error(response);
                }
            }
            catch (Exception ex)
            {
                return result.Error(ex.Message);
            }
        }

        /// <summary>
        /// Elimina un libro de la base de datos por su ID.
        /// </summary>
        public ServiceResult EliminarLibro(int id)
        {
            var result = new ServiceResult();
            try
            {
                var response = _libroRepositorio.Eliminar(id);
                if (response.CodeStatus > 0)
                {
                    return result.Ok(response);
                }
                else
                {
                    response.MessageStatus = (response.CodeStatus == 0) ? "401 Error de Consulta" : response.MessageStatus;
                    return result.Error(response);
                }
            }
            catch (Exception ex)
            {
                return result.Error(ex.Message);
            }
        }

        /// <summary>
        /// Obtiene detalles de un libro por su ID.
        /// </summary>
        public IEnumerable<tbLibros> Detalles(int id)
        {
            return _libroRepositorio.Detalle(id);
        }

        /// <summary>
        /// Obtiene detalles de un autor por su ID.
        /// </summary>
        public IEnumerable<tbLibros> autoresdetalle(int id)
        {
            return _libroRepositorio.autoresDetalle(id);
        }

        /// <summary>
        /// Obtiene detalles de un género por su ID.
        /// </summary>
        public IEnumerable<tbLibros> Generosdetalle(int id)
        {
            return _libroRepositorio.GenerosDetalle(id);
        }

        #endregion
    }
}
