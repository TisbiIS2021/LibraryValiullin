#pragma checksum "..\..\..\View\ReaderPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "67D25E62E73338DC3C9D9B3A1164117FE2F4258C1BA37C9C2CFD04DD6FA1C4FC"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using LibraryApp.View;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace LibraryApp.View {
    
    
    /// <summary>
    /// ReaderPage
    /// </summary>
    public partial class ReaderPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button IssueBooksBtn;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button DeleteFromBuscketBtn;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button HistoryBtn;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker ReturnDateDp;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox EmployeeCb;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid BuscketDg;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SearchTb;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox GenreCb;
        
        #line default
        #line hidden
        
        
        #line 47 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button DropFilterBtn;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\..\View\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView BookLV;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/LibraryApp;component/view/readerpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\ReaderPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 10 "..\..\..\View\ReaderPage.xaml"
            ((LibraryApp.View.ReaderPage)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Page_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.IssueBooksBtn = ((System.Windows.Controls.Button)(target));
            
            #line 20 "..\..\..\View\ReaderPage.xaml"
            this.IssueBooksBtn.Click += new System.Windows.RoutedEventHandler(this.IssueBooksBtn_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.DeleteFromBuscketBtn = ((System.Windows.Controls.Button)(target));
            
            #line 23 "..\..\..\View\ReaderPage.xaml"
            this.DeleteFromBuscketBtn.Click += new System.Windows.RoutedEventHandler(this.DeleteFromBuscketBtn_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.HistoryBtn = ((System.Windows.Controls.Button)(target));
            
            #line 26 "..\..\..\View\ReaderPage.xaml"
            this.HistoryBtn.Click += new System.Windows.RoutedEventHandler(this.HistoryBtn_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.ReturnDateDp = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 6:
            this.EmployeeCb = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 7:
            this.BuscketDg = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 8:
            this.SearchTb = ((System.Windows.Controls.TextBox)(target));
            
            #line 41 "..\..\..\View\ReaderPage.xaml"
            this.SearchTb.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.SearchTb_TextChanged);
            
            #line default
            #line hidden
            return;
            case 9:
            this.GenreCb = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 10:
            this.DropFilterBtn = ((System.Windows.Controls.Button)(target));
            
            #line 48 "..\..\..\View\ReaderPage.xaml"
            this.DropFilterBtn.Click += new System.Windows.RoutedEventHandler(this.DropFilterBtn_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            this.BookLV = ((System.Windows.Controls.ListView)(target));
            
            #line 51 "..\..\..\View\ReaderPage.xaml"
            this.BookLV.MouseRightButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.BookLV_MouseRightButtonDown);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

