using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace _2001200647_QLNUOCGIAIKHAT.Models
{
    public class LoginModel
    {
        [Display(Name = "Tên đăng nhập")]
        public string UseName { get; set; }
        [Display(Name = "Mật khẩu")]
        [StringLength(20, MinimumLength = 6, ErrorMessage = "Độ dài mật khẩu ít nhất 6 kí tự.")]
        [Required(ErrorMessage = "nhập mật khẩu")]
        public string Password { get; set; }
        public object Username { get; internal set; }
    }
}