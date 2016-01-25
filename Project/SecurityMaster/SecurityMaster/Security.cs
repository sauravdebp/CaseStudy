using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
<<<<<<< HEAD
using System.Xml.Serialization;

namespace SecMaster_DAL.DataModel
{
    [XmlInclude(typeof(Equity))]
    [XmlInclude(typeof(CorporateBond))]
    [Serializable]
    public class Security
    {
        public int SecurityId { get; set; }
        [XmlElement(IsNullable = true)]
        public string Name { get; set; }
        [XmlElement(IsNullable = true)]
        public string Description { get; set; }
    }
}
=======

namespace SecMaster_DAL.DataModel
{
    public class Security
    {

    }
}
>>>>>>> d8d99c8664bc70dd201c54174935749111937d8c
