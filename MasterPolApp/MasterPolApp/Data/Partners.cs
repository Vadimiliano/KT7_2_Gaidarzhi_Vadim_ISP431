//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MasterPolApp.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Partners
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Partners()
        {
            this.Partner_Product = new HashSet<Partner_Product>();
        }
    
        public int ID { get; set; }
        public int IDPartnerType { get; set; }
        public string PartnerName { get; set; }
        public int IDDirector { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public int IDIndex { get; set; }
        public int IDArea { get; set; }
        public int IDCity { get; set; }
        public int IDStreet { get; set; }
        public int HouseNum { get; set; }
        public string INN { get; set; }
        public int Rating { get; set; }
    
        public virtual Area Area { get; set; }
        public virtual City City { get; set; }
        public virtual Directors Directors { get; set; }
        public virtual Index Index { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Partner_Product> Partner_Product { get; set; }
        public virtual PartnerType PartnerType { get; set; }
        public virtual Street Street { get; set; }
    }
}
