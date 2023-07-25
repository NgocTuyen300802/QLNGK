using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace _2001200647_QLNUOCGIAIKHAT.Models
{
    public class RegisterModel
    {
        [Key]
        public int IdUser { get; set; }
        [Display(Name ="Tên tài khoản")]
        [Required(ErrorMessage ="Yêu cầu bạn nhập.")]
        public string UserName { get; set; }
        [Display(Name = "Họ đăng nhập")]
        [Required(ErrorMessage = "Yêu cầu nhập họ.")]
        public string LastName { get; set; }
        [Display(Name = "Tên đăng nhập")]
        [Required(ErrorMessage = "Yêu cầu nhập tên.")]
        public string FirstName { get; set; }
        [Display(Name = "Mật khẩu")]
        [StringLength(20,MinimumLength =6, ErrorMessage ="Độ dài mật khẩu ít nhất 6 ký tự.")]
        [Required(ErrorMessage = "Yêu cầu nhập mật khẩu.")]
        public string Password { get; set; }
        [Display(Name = "Xác nhận mật khẩu")]
        [Compare("Password", ErrorMessage ="Xác nhận mật khẩu không đúng.")]
        public string ConfirmPassword { get; set; }
        [Display(Name = "Email")]

        public string Email { get; set; }
    }
}