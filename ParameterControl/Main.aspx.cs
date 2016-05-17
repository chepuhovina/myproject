using System;
using System.Collections.Generic;
using System.Xml.Serialization;
using System.IO;
using Parameter = ParameterControl.Models.Parameter;

namespace ParameterControl
{
    public partial class Main : System.Web.UI.Page
    {
        //private const string FolderName = "F:\\";
        private const string FileName = "F:\\Input.xml";
        private const string RootElement = "Parameters";

        private List<Parameter> _parameterList;
        protected void Page_Load(object sender, EventArgs e)
        {
            _parameterList = (List<Parameter>) DeserializeXml(FileName);
        }

        private static IEnumerable<Parameter> DeserializeXml(string filename)
        {
            using (var fStream = new FileStream(filename, FileMode.Open))
            {
                var serializer = new XmlSerializer(typeof(List<Parameter>),
                    new XmlRootAttribute(RootElement));
                var parameters = (List<Parameter>)serializer.Deserialize(fStream);
                return parameters;
            }
        }

        private static bool IsValueContainTrue(string value)
        {
            return value == "True" ? true : false;
        }

        private void AddBoleanParameter(Parameter parameter)
        {
            var boolParameter = (BoolParameterControl)LoadControl("BoolParameterControl.ascx");
            boolParameter.InitializeFields(parameter.Id, parameter.Name, parameter.Description, parameter.Type, IsValueContainTrue(parameter.Value));

            form1.Controls.Add(boolParameter);
        }

        private void AddStringOrIntParameter(Parameter parameter)
        {
            var parameterControl = (CommonParameterControl)LoadControl("CommonParameterControl.ascx");
            parameterControl.InitializeFields(parameter.Id, parameter.Name, parameter.Description, parameter.Type, parameter.Value);

            form1.Controls.Add(parameterControl);
        }

        private void CreateWebControls(IEnumerable<Parameter> parameters)
        {
            foreach (var parameter in parameters)
            {
                    if (parameter.Type == "System.Boolean")
                        AddBoleanParameter(parameter);
                    else
                        AddStringOrIntParameter(parameter);
            }
        }

        protected void Show_Click(object sender, EventArgs e)
        {
            CreateWebControls(_parameterList);
        }

        protected void Validate_Click(object sender, EventArgs e)
        {

        }
    }
}