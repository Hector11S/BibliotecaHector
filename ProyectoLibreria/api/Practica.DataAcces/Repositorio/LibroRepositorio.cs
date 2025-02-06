using Dapper;
using Entities.Entities;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practica.DataAcces.Repositorio
{
    /// <summary>
    /// Repositorio para gestionar la entidad tbLibros en la base de datos.
    /// </summary>
    public class LibroRepositorio : IRepository<tbLibros>
    {
        /// <summary>
        /// Actualiza un libro existente en la base de datos.
        /// </summary>
        /// <param name="item">Instancia de tbLibros con los nuevos datos.</param>
        /// <returns>Estado de la operación.</returns>
        public RequestStatus Actualizar(tbLibros item)
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                var parametro = new DynamicParameters();
                parametro.Add("Libr_id", item.Libr_id);
                parametro.Add("Libr_titulo", item.Libr_titulo);
                parametro.Add("Libr_ano_publicacion", item.Libr_ano_publicacion);
                parametro.Add("Gene_Id", item.Gene_Id);
                parametro.Add("auto_Id", item.auto_Id);
                parametro.Add("Libr_UsuarioModificacion", item.Libr_UsuarioModificacion);
                parametro.Add("Libr_FechaModificacion", DateTime.Now);

                var result = db.Execute(ScriptBaseDatos.libr_Actualizar,
                    parametro,
                    commandType: CommandType.StoredProcedure);

                string mensaje = (result == 1) ? "Exito" : "Error";
                return new RequestStatus { CodeStatus = result, MessageStatus = mensaje };
            }
        }

        /// <summary>
        /// Elimina un libro de la base de datos por su ID.
        /// </summary>
        /// <param name="id">ID del libro a eliminar.</param>
        /// <returns>Estado de la operación.</returns>
        public RequestStatus Eliminar(int? id)
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                var parametro = new DynamicParameters();
                parametro.Add("Libr_id", id);
                var result = db.Execute(ScriptBaseDatos.libr_Eliminar,
                    parametro,
                    commandType: CommandType.StoredProcedure);

                string mensaje = (result == 1) ? "Exito" : "Error";
                return new RequestStatus { CodeStatus = result, MessageStatus = mensaje };
            }
        }

        /// <summary>
        /// Busca un libro por su ID. (Método no implementado)
        /// </summary>
        public tbLibros Find(int? id)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Inserta un nuevo libro en la base de datos.
        /// </summary>
        /// <param name="item">Instancia de tbLibros con los datos a insertar.</param>
        /// <returns>Estado de la operación.</returns>
        public RequestStatus Insertar(tbLibros item)
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                var parametro = new DynamicParameters();
                parametro.Add("Libr_titulo", item.Libr_titulo);
                parametro.Add("Libr_ano_publicacion", item.Libr_ano_publicacion);
                parametro.Add("Gene_Id", item.Gene_Id);
                parametro.Add("auto_Id", item.auto_Id);
                parametro.Add("Libr_UsuarioCreacion", item.Libr_UsuarioCreacion);
                parametro.Add("Libr_FechaCreacion", DateTime.Now);

                var result = db.Execute(ScriptBaseDatos.libr_Insertar,
                    parametro,
                    commandType: CommandType.StoredProcedure);
                string mensaje = (result == 1) ? "Exito" : "Error";
                return new RequestStatus { CodeStatus = result, MessageStatus = mensaje };
            }
        }

        /// <summary>
        /// Obtiene detalles de un libro por su ID.
        /// </summary>
        public IEnumerable<tbLibros> ObtenerEstadoID(int Libr_id)
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                var parameters = new { Libr_id = Libr_id };
                return db.Query<tbLibros>(ScriptBaseDatos.libr_Detalles, parameters, commandType: CommandType.StoredProcedure).ToList();
            }
        }

        /// <summary>
        /// Obtiene la lista de todos los libros.
        /// </summary>
        public IEnumerable<tbLibros> List()
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                return db.Query<tbLibros>(ScriptBaseDatos.libr_Mostrar, commandType: CommandType.Text).ToList();
            }
        }

        /// <summary>
        /// Obtiene la lista de autores.
        /// </summary>
        public IEnumerable<tbLibros> Ddlautores()
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                return db.Query<tbLibros>(ScriptBaseDatos.Auto_Mostrar, commandType: CommandType.Text).ToList();
            }
        }

        /// <summary>
        /// Obtiene la lista de géneros.
        /// </summary>
        public IEnumerable<tbLibros> DdlGeneros()
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                return db.Query<tbLibros>(ScriptBaseDatos.Gene_Mostrar, commandType: CommandType.Text).ToList();
            }
        }

        /// <summary>
        /// Obtiene detalles de un género por su ID.
        /// </summary>
        public IEnumerable<tbLibros> GenerosDetalle(int Gene_Id)
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                var parameters = new { Gene_Id = Gene_Id };
                return db.Query<tbLibros>(ScriptBaseDatos.Gene_Detalle, parameters, commandType: CommandType.StoredProcedure).ToList();
            }
        }

        /// <summary>
        /// Obtiene detalles de un autor por su ID.
        /// </summary>
        public IEnumerable<tbLibros> autoresDetalle(int auto_Id)
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                var parameters = new { auto_Id = auto_Id };
                return db.Query<tbLibros>(ScriptBaseDatos.Auto_Detalle, parameters, commandType: CommandType.StoredProcedure).ToList();
            }
        }

        /// <summary>
        /// Obtiene detalles de un libro por su ID.
        /// </summary>
        public IEnumerable<tbLibros> Detalle(int Libr_id)
        {
            using (var db = new SqlConnection(PracticaContext.ConnectionString))
            {
                var parameters = new { Libr_id = Libr_id };
                return db.Query<tbLibros>(ScriptBaseDatos.libr_Detalles, parameters, commandType: CommandType.StoredProcedure).ToList();
            }
        }
    }
}
