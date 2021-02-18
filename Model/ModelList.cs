using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KPC_DT_CAP.Model
{
    public class ModelList
    {
    }

    [Serializable]
    internal class CAP_MODEL
    {
        public string CAP_NAME { get; set; }
        public string CAP_NAME_S { get; set; }
        public string CAP_NAME_D { get; set; }
        public string CAP_CODE { get; set; }
        public string CAP_ORDER { get; set; }
        public string CAP_GUBUN { get; set; }
        public string CAP_RESULT { get; set; }
    }
}