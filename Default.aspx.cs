using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Xml;
using System.IO;
using System.Data;
using System.Web.Caching;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();

        if (Cache["NetVeriHTML"] == null)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(new XmlTextReader("http://www.netdata.com/XML/47aed606?$orderby=dc_Ulke_Kodu"));

            int genelSayac = 0;
            sb.Append("<div>");
            for (int i = 0; i < 89; i++)
            {
                string ulkeKodu = ds.Tables[0].Rows[genelSayac]["dc_Ulke_Kodu"].ToString();
                string vBaslik = ds.Tables[0].Rows[genelSayac]["dc_Video_Baslik"].ToString();
                string vLink = ds.Tables[0].Rows[genelSayac]["dc_Video_Link"].ToString();

                sb.Append("<table cellspacing='0' cellpadding='0'>");

                sb.Append("<tr class='ulkeKod'><td>");
                sb.Append("<a href='https://www.youtube.com/feed/trending?gl=" + ulkeKodu + "' target='_blank' rel='nofollow' data-toggle='tooltip' data-placement='top' title='" + ulkeKodu + "' >" + ulkeKodu + "</a>");
                sb.Append("</td></tr>");

                sb.Append("<tr><td><a href='https://www.youtube.com/feed/trending?gl=" + ulkeKodu + "' target='_blank' rel='nofollow' data-toggle='tooltip' data-placement='top' title='" + ulkeKodu + "'>");
                sb.Append("<img src='UlkeBayraklar/" + ulkeKodu + ".png' class='bayraklar'/>");
                sb.Append("</a></td></tr>");

                for (int j = 1; j < 51; j++)
                {
                    vLink = ds.Tables[0].Rows[genelSayac]["dc_Video_Link"].ToString();
                    vBaslik = ds.Tables[0].Rows[genelSayac]["dc_Video_Baslik"].ToString().Replace("'", " ").Replace("\"", " ");
                    sb.Append("<tr><td><a href='" + vLink + "' class='videoLink' rel='nofollow' target='_blank' data-toggle='tooltip' data-placement='top' title='" + vBaslik + "'>" + (genelSayac % 50 + 1) + "</a></td></tr>");
                    genelSayac++;
                }
                sb.Append("</table>");
            }
            sb.Append("</div>");

            Cache["NetVeriHTML"] = sb;
        }

        ltrTablo.Text = Cache["NetVeriHTML"].ToString();

    }
}