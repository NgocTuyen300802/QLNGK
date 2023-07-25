using _2001200647_QLNUOCGIAIKHAT.Context;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace _2001200647_QLNUOCGIAIKHAT.Models
{
    public class Product_Category
        
    {
        [Key]
        public List<Product> ListProduct { get; set; }
        public List<Category> ListCategory { get; set; }
    }
    

}