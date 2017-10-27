namespace Term_Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class member
    {
        public int memberID { get; set; }

        [StringLength(20)]
        public string lastName { get; set; }

        [StringLength(20)]
        public string firstName { get; set; }

        [Column(TypeName = "date")]
        public DateTime? membershipDate { get; set; }
    }
}
