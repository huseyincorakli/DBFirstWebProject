//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FrozenYogurtDBFirstWeb
{
    using System;
    using System.Collections.Generic;
    
    public partial class urun
    {
        public int UrunId { get; set; }
        public int KategoriId { get; set; }
        public string UrunAdi { get; set; }
        public Nullable<double> Fiyat { get; set; }
    
        public virtual kategori kategori { get; set; }
    }
}
