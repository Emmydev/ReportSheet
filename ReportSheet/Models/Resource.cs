//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportSheet.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Resource
    {
        public int SheetId { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public System.DateTime DateCreated { get; set; }
        public string Description { get; set; }
        public byte[] FileContent { get; set; }
        public string ContentType { get; set; }
        public Nullable<int> FileSize { get; set; }
        public string FileExtension { get; set; }
        public int CategoryId { get; set; }
        public Nullable<int> CurriculumId { get; set; }
        public int DownloadCount { get; set; }
        public int Status { get; set; }
        public Nullable<int> SubjectId { get; set; }
        public string PreviewPath { get; set; }
        public string FilePath { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual Curriculum Curriculum { get; set; }
        public virtual Subject Subject { get; set; }
    }
}