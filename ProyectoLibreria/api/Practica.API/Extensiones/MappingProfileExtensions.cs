using AutoMapper;
using Entities.Entities;
using Practica.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Practica.API.Extensiones
{
    public class MappingProfileExtensions: Profile
    {
        public MappingProfileExtensions()
        {
    
            CreateMap<LibroViewModel, tbLibros>().ReverseMap();
     

        }
    }
}



