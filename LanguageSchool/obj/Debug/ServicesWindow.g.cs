﻿#pragma checksum "..\..\ServicesWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "5628E081629DAA81F6D80B92EFC7E9ABA19374CA57F2DD6CBD4A1A7F9D6F82C1"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using LanguageSchool;
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


namespace LanguageSchool {
    
    
    /// <summary>
    /// ServicesWindow
    /// </summary>
    public partial class ServicesWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 26 "..\..\ServicesWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button GoBackBtn;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\ServicesWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbSortPrice;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\ServicesWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox DiscountCB;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\ServicesWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox CodeTB;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\ServicesWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView btnLB;
        
        #line default
        #line hidden
        
        
        #line 57 "..\..\ServicesWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView ServicesListView;
        
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
            System.Uri resourceLocater = new System.Uri("/LanguageSchool;component/serviceswindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\ServicesWindow.xaml"
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
            this.GoBackBtn = ((System.Windows.Controls.Button)(target));
            
            #line 26 "..\..\ServicesWindow.xaml"
            this.GoBackBtn.Click += new System.Windows.RoutedEventHandler(this.GoBackBtn_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.cbSortPrice = ((System.Windows.Controls.ComboBox)(target));
            
            #line 29 "..\..\ServicesWindow.xaml"
            this.cbSortPrice.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cbSortPriceSelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.DiscountCB = ((System.Windows.Controls.ComboBox)(target));
            
            #line 35 "..\..\ServicesWindow.xaml"
            this.DiscountCB.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.DiscountCB_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.CodeTB = ((System.Windows.Controls.TextBox)(target));
            
            #line 43 "..\..\ServicesWindow.xaml"
            this.CodeTB.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.CodeTB_TextChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.btnLB = ((System.Windows.Controls.ListView)(target));
            return;
            case 10:
            this.ServicesListView = ((System.Windows.Controls.ListView)(target));
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 6:
            
            #line 49 "..\..\ServicesWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ClientRecordCreateBtn_Click);
            
            #line default
            #line hidden
            break;
            case 7:
            
            #line 50 "..\..\ServicesWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.UpdateBtn_Click);
            
            #line default
            #line hidden
            break;
            case 8:
            
            #line 51 "..\..\ServicesWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.DeleteBtn_Click);
            
            #line default
            #line hidden
            break;
            case 9:
            
            #line 52 "..\..\ServicesWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.CreateServiceBtn_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}
