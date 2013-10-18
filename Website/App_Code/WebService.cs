using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// WebService 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]
    public void Submit(string data) {
        using (var dc = new MainDataContext())
        {
            var wkb = new WuKeBiao();
            wkb.Data = data;
            wkb.Hide = false;
            dc.WuKeBiao.InsertOnSubmit(wkb);
            dc.SubmitChanges();
        }
    }

    [WebMethod]
    public string Fetch()
    {
        using (var dc = new MainDataContext())
        {
            var data = from w in dc.WuKeBiao
                       where !w.Hide
                       select w.Data;
            return "[" + string.Join(",", data.ToArray()) + "]";
        }
    }
}
