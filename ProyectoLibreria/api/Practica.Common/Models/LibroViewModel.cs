using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practica.Common.Models
{
    public class LibroViewModel
    {

        [NotMapped]
        public int codigo { get; set; }

        [NotMapped]
        public string Gene_Descripcion { get; set; }
        
        [NotMapped]
         public string Nombre_Completo { get; set; }

        [NotMapped]
        public string Genero { get; set; }

        [NotMapped]
        public string Nombre_Completo_Autor { get; set; }

        public int Libr_id { get; set; }
        public string Libr_titulo { get; set; }
        public int? Libr_ano_publicacion { get; set; }

        public int? Gene_Id { get; set; }
        public int auto_Id { get; set; }

        public int? Libr_UsuarioCreacion { get; set; }
        public DateTime? Libr_FechaCreacion { get; set; }
        public int? Libr_UsuarioModificacion { get; set; }
        public DateTime? Libr_FechaModificacion { get; set; }


     
        public string Usuario_Modificacion { get; set; }

        public string Usuario_Creacion { get; set; }
    }
}
