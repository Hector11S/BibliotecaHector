﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;

namespace Entities.Entities
{
    public partial class tbGeneros
    {
        public tbGeneros()
        {
            tbLibros = new HashSet<tbLibros>();
        }

        public int Gene_Id { get; set; }
        public string Gene_Descripcion { get; set; }
        public int? Gene_UsuarioCreacion { get; set; }
        public DateTime? Gene_FechaCreacion { get; set; }
        public int? Gene_UsuarioModificacion { get; set; }
        public DateTime? Gene_FechaModificacion { get; set; }

        public virtual tbUsuarios Gene_UsuarioCreacionNavigation { get; set; }
        public virtual tbUsuarios Gene_UsuarioModificacionNavigation { get; set; }
        public virtual ICollection<tbLibros> tbLibros { get; set; }
    }
}