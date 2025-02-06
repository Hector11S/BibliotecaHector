using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practica.DataAcces.Repositorio
{
    /// <summary>
    /// Clase que contiene los nombres de los procedimientos almacenados utilizados en la base de datos.
    /// </summary>
    public class ScriptBaseDatos
    {
        #region Libros
        /// <summary>
        /// Procedimiento almacenado para listar los libros.
        /// </summary>
        public static string libr_Mostrar = "General.[sp_Libros_Listar]";

        /// <summary>
        /// Procedimiento almacenado para insertar un nuevo libro.
        /// </summary>
        public static string libr_Insertar = "General.[sp_Libros_Insertar]";

        /// <summary>
        /// Procedimiento almacenado para actualizar un libro existente.
        /// </summary>
        public static string libr_Actualizar = "General.[sp_Libros_Actualizar]";

        /// <summary>
        /// Procedimiento almacenado para eliminar un libro.
        /// </summary>
        public static string libr_Eliminar = "General.[sp_Libros_Eliminar]";

        /// <summary>
        /// Procedimiento almacenado para obtener los detalles de un libro.
        /// </summary>
        public static string libr_Detalles = "General.[sp_Libros_Detalle]";
        #endregion

        #region Autores
        /// <summary>
        /// Procedimiento almacenado para listar los autores.
        /// </summary>
        public static string Auto_Mostrar = "General.[sp_Autores_Listar]";

        /// <summary>
        /// Procedimiento almacenado para obtener los detalles de un autor.
        /// </summary>
        public static string Auto_Detalle = "General.[sp_Autores_Detalle]";
        #endregion

        #region Generos
        /// <summary>
        /// Procedimiento almacenado para listar los géneros.
        /// </summary>
        public static string Gene_Mostrar = "General.[sp_Generos_Listar]";

        /// <summary>
        /// Procedimiento almacenado para obtener los detalles de un género.
        /// </summary>
        public static string Gene_Detalle = "General.[sp_Generos_Detalle]";
        #endregion
    }
}
