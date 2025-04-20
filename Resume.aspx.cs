using System;
using System.Linq;
using System.Web.UI;
using System.Xml.Linq;

namespace Laba1
{
    public partial class Resume : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string[] selectedSkills = hdnSelectedSkills.Value.Split('|');
            string skillsText = string.Join(", ", selectedSkills.Where(s => !string.IsNullOrEmpty(s)));

            var xml = new XElement("Resume",
                new XElement("FullName", txtName.Text),
                new XElement("Age", txtAge.Text),
                new XElement("MobilePhone", txtPhone.Text),
                new XElement("Email", txtEmail.Text),
                new XElement("Languages", txtLanguages.Text),
                new XElement("Education", txtEducation.Text),
                new XElement("WorkExperience", txtExperience.Text),
                new XElement("LastJob", txtLastJob.Text),
                new XElement("TotalExperience", txtTotalExp.Text),
                new XElement("Address", txtAddress.Text),
                new XElement("DesiredPosition", txtPosition.Text),
                new XElement("SalaryExpectation", txtSalary.Text),
                new XElement("KeySkills", skillsText)
            );

            Response.Clear();
            Response.ContentType = "application/xml";
            Response.AddHeader("Content-Disposition", "attachment; filename=resume.xml");
            Response.Write(xml.ToString());
            Response.End();
        }
    }
}