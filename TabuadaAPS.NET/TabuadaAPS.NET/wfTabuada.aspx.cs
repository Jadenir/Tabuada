using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TabuadaAPS.NET
{
    public partial class wfTabuada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Valida se está chamando pela primeira vez
            if (! IsPostBack)
            {
                for (int i = 1; i < 10; i++)
                {
                    DDLNUMEROS.Items.Add(i.ToString());
                }
            }
        }

        protected void BTNEXECUTAR_Click(object sender, EventArgs e)
        {
            //limpa os dados da ListBox
            LBRESULTADO.Items.Clear();

            ListItem li = DDLNUMEROS.SelectedItem;
            int n = Convert.ToInt32(li.Value);
            int t = 0;
            for (int i = 0; i < 10; i++)
            {
                if (DDLOPERACAO.SelectedValue == "Adição")
                {
                    t = i + n;
                    LBRESULTADO.Items.Add(i.ToString() + " + " + n.ToString() + " = " + t.ToString());
                }
                else if (DDLOPERACAO.SelectedValue == "Subtração")
                {
                    t = i - n;
                    LBRESULTADO.Items.Add(i.ToString() + " - " + n.ToString() + " = " + t.ToString());
                }
                else if (DDLOPERACAO.SelectedValue == "Multiplicação")
                {
                    t = i * n;
                    LBRESULTADO.Items.Add(i.ToString() + " X " + n.ToString() + " = " + t.ToString());
                }
                else
                {
                    t = i / n;
                    LBRESULTADO.Items.Add(i.ToString() + " / " + n.ToString() + " = " + t.ToString());
                }
            }
        }
    }
}