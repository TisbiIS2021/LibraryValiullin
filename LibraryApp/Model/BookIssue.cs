//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LibraryApp.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class BookIssue
    {
        public int ID { get; set; }
        public Nullable<System.DateTime> IssueDate { get; set; }
        public Nullable<System.DateTime> ReturnDate { get; set; }
        public Nullable<int> ReaderID { get; set; }
        public Nullable<int> BookId { get; set; }
        public Nullable<int> EmployeeId { get; set; }
    
        public virtual Book Book { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual Reader Reader { get; set; }
    }
}