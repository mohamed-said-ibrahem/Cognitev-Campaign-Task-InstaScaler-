#pragma checksum "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "64e8e501d554492f7d69ea050e24c296b51ce871"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Categories_Index), @"mvc.1.0.view", @"/Views/Categories/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Categories/Index.cshtml", typeof(AspNetCore.Views_Categories_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\_ViewImports.cshtml"
using Campaign;

#line default
#line hidden
#line 2 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\_ViewImports.cshtml"
using Campaign.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"64e8e501d554492f7d69ea050e24c296b51ce871", @"/Views/Categories/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a3874e93a0883bb030378683bd90ea6ea6a778b0", @"/Views/_ViewImports.cshtml")]
    public class Views_Categories_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<Campaign.Models.CategoryCompaign>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Create", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn my_btn  btn-blue  btn-create btn-sm"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("dropdown-item"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Edit", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 1 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
  var controllerName = ViewContext.RouteData.Values["controller"].ToString();

#line default
#line hidden
            BeginContext(80, 2, true);
            WriteLiteral("\r\n");
            EndContext();
            BeginContext(136, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 5 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
  
    ViewData["Title"] = "Category";

#line default
#line hidden
            BeginContext(182, 100, true);
            WriteLiteral("\r\n<div class=\"nav nav-tabs     mt-5 p-4 md-tabs text-white\" id=\"myTabMD\" role=\"tablist\">\r\n    <h5>  ");
            EndContext();
            BeginContext(283, 17, false);
#line 10 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
     Write(ViewData["Title"]);

#line default
#line hidden
            EndContext();
            BeginContext(300, 98, true);
            WriteLiteral("</h5>\r\n</div>\r\n<div class=\"tab-content  card pt-5 mb-5 overflow-hidden\" id=\"myTabContentMD\">\r\n    ");
            EndContext();
            BeginContext(398, 112, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "64e8e501d554492f7d69ea050e24c296b51ce8715669", async() => {
                BeginContext(469, 37, true);
                WriteLiteral("<i class=\"fa fa-file\"></i> Create New");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(510, 210, true);
            WriteLiteral("\r\n    <div class=\"table-fix \">\r\n        <table class=\"datatable table table-striped table-bordered\">\r\n            <thead>\r\n                <tr>\r\n                    <th class=\"d-none\">\r\n                        ");
            EndContext();
            BeginContext(721, 38, false);
#line 19 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                   Write(Html.DisplayNameFor(model => model.Id));

#line default
#line hidden
            EndContext();
            BeginContext(759, 79, true);
            WriteLiteral("\r\n                    </th>\r\n                    <th>\r\n                        ");
            EndContext();
            BeginContext(839, 40, false);
#line 22 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                   Write(Html.DisplayNameFor(model => model.Name));

#line default
#line hidden
            EndContext();
            BeginContext(879, 79, true);
            WriteLiteral("\r\n                    </th>\r\n                    <th>\r\n                        ");
            EndContext();
            BeginContext(959, 46, false);
#line 25 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                   Write(Html.DisplayNameFor(model => model.CreateDate));

#line default
#line hidden
            EndContext();
            BeginContext(1005, 126, true);
            WriteLiteral("\r\n                    </th>\r\n                    <th></th>\r\n                </tr>\r\n            </thead>\r\n            <tbody>\r\n");
            EndContext();
#line 31 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                 foreach (var item in Model)
                {

#line default
#line hidden
            BeginContext(1196, 99, true);
            WriteLiteral("                    <tr>\r\n                        <td class=\"d-none\">\r\n                            ");
            EndContext();
            BeginContext(1296, 37, false);
#line 35 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                       Write(Html.DisplayFor(modelItem => item.Id));

#line default
#line hidden
            EndContext();
            BeginContext(1333, 91, true);
            WriteLiteral("\r\n                        </td>\r\n                        <td>\r\n                            ");
            EndContext();
            BeginContext(1425, 39, false);
#line 38 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                       Write(Html.DisplayFor(modelItem => item.Name));

#line default
#line hidden
            EndContext();
            BeginContext(1464, 91, true);
            WriteLiteral("\r\n                        </td>\r\n                        <td>\r\n                            ");
            EndContext();
            BeginContext(1556, 45, false);
#line 41 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                       Write(Html.DisplayFor(modelItem => item.CreateDate));

#line default
#line hidden
            EndContext();
            BeginContext(1601, 476, true);
            WriteLiteral(@"
                        </td>
                        <td>
                            <div class=""dropdown data-table-dropdown"">
                                <button class=""btn my_btn btn-sm"" data-toggle=""dropdown"">
                                    <i class=""fa fa-cog"" aria-hidden=""true""></i> Actions
                                </button>
                                <div class=""dropdown-menu dropdown-menu-right"">
                                    ");
            EndContext();
            BeginContext(2077, 105, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "64e8e501d554492f7d69ea050e24c296b51ce87110959", async() => {
                BeginContext(2144, 34, true);
                WriteLiteral("<i class=\"fa fa-pencil\"></i> Edit ");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 49 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                                                                                 WriteLiteral(item.Id);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(2182, 82, true);
            WriteLiteral("\r\n                                    <a class=\"dropdown-item\" title=\"Delete Item\"");
            EndContext();
            BeginWriteAttribute("onclick", " onclick=\'", 2264, "\'", 2329, 5);
            WriteAttributeValue("", 2274, "DeleteRow(\"/Admin/", 2274, 18, true);
#line 50 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
WriteAttributeValue("", 2292, controllerName, 2292, 15, false);

#line default
#line hidden
            WriteAttributeValue("", 2307, "/JsonDelete/", 2307, 12, true);
#line 50 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
WriteAttributeValue("", 2319, item.Id, 2319, 8, false);

#line default
#line hidden
            WriteAttributeValue("", 2327, "\")", 2327, 2, true);
            EndWriteAttribute();
            BeginContext(2330, 137, true);
            WriteLiteral("><i class=\"fa fa-trash-o\"></i> Delete </a>\r\n                                    <a class=\"dropdown-item Duplicate\" title=\"Duplicate item\"");
            EndContext();
            BeginWriteAttribute("onclick", " onclick=\'", 2467, "\'", 2538, 5);
            WriteAttributeValue("", 2477, "DuplicateRow(\"/Admin/", 2477, 21, true);
#line 51 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
WriteAttributeValue("", 2498, controllerName, 2498, 15, false);

#line default
#line hidden
            WriteAttributeValue("", 2513, "/JsonDuplicate/", 2513, 15, true);
#line 51 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
WriteAttributeValue("", 2528, item.Id, 2528, 8, false);

#line default
#line hidden
            WriteAttributeValue("", 2536, "\")", 2536, 2, true);
            EndWriteAttribute();
            BeginContext(2539, 179, true);
            WriteLiteral("><i class=\"fa fa-clone\"></i> Duplicate </a>\r\n                                </div>\r\n                            </div>\r\n                        </td>\r\n                    </tr>\r\n");
            EndContext();
#line 56 "C:\Users\Heba\Desktop\Campaign\Campaign\Campaign\Views\Categories\Index.cshtml"
                }

#line default
#line hidden
            BeginContext(2737, 60, true);
            WriteLiteral("            </tbody>\r\n        </table>\r\n    </div>\r\n</div>\r\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public Campaign.Controllers.Common common { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<Campaign.Models.CategoryCompaign>> Html { get; private set; }
    }
}
#pragma warning restore 1591
