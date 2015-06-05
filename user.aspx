<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="user.aspx.vb" Inherits="WebApplication1.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="//intranet/skin/medovgu/css/standard_screen.css?v=2" type="text/css" title="OvGU" media="screen" />
 <link rel="stylesheet" href="//intranet/skin/medovgu/css/med/style.css?v=3" type="text/css" title="OvGU" media="screen" />
 <link rel="stylesheet" href="//intranet/skin/medovgu/css/lightbox.css" type="text/css" title="OvGU" media="screen" />
 <link rel="stylesheet" href="//intranet/skin/medovgu/css/standard_print.css" type="text/css" media="print" />
 <link rel="alternate stylesheet" href="//intranet/skin/medovgu/css/barrierefrei.css" title="Barrierefrei" type="text/css" media="screen" />
 <link rel="stylesheet" href="//intra4/css/defaultTablesorter.css" type="text/css"/>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Interne Stellenausschreibung ...Prototyp</title>
<style type="text/css">
* { font-family:"Lucida Grande","Lucida Sans Unicode","Lucida Sans",sans-serif;font-size:9pt}
</style>

</head>
    
<body>
    
    <form id="form1" runat="server">
        
    <asp:Label ID="ergebnis" runat="server" />
        
    <div>
        <h2>Interne Stellenausschreibung User Bereich V1.0</h2> <!-- Ueberschrifft -->
                      
    </div>
    <div>  
        <!-- erstellt die Tablle (GridView) 
                der Bereich <columns> gibt die Spalten an aus der die abgefragten Eintraege angezeigt werden sollen
                die Button "anzeigen" und "verbergen" funktionieren auch ohne aktivierter checkbox-->
        
        <asp:GridView 
          ID="grdResults" 
          runat="server" 
          PagerStyle-BorderStyle="None" 
          RowStyle-BorderStyle="None" 
          SelectedRowStyle-BorderStyle="None" 
          HeaderStyle-BorderStyle="None" 
          GridLines="Horizontal" 
          FooterStyle-BorderStyle="None" 
          EmptyDataRowStyle-BorderStyle="None" 
          BorderStyle="none"
          OnRowCommand="grdResults_RowCommand"
          AutoGenerateEditButton="false"
          >
          
          <columns>
              
            <asp:boundfield Datafield="id" HtmlEncode="false" HeaderText="" ItemStyle-Font-Size="0" HeaderStyle-HorizontalAlign="Left"/>
            <asp:BoundField DataField="docname" HtmlEncode="false" HeaderText="" ItemStyle-Font-Size="0" HeaderStyle-HorizontalAlign="Left" Visible="true" />
            
            <asp:boundfield Datafield="displayname" HtmlEncode="false" headertext="Anzeige" HeaderStyle-HorizontalAlign="Left" />
            <asp:boundfield Datafield="author" HtmlEncode="false" headertext="Autor" HeaderStyle-HorizontalAlign="Left"/>
            <asp:boundfield Datafield="gueltigbis" HtmlEncode="false" headertext="gültig bis" HeaderStyle-HorizontalAlign="Left"/>
            <asp:BoundField DataField="oeffentlich" HtmlEncode="false" HeaderText="" ItemStyle-Font-Size="0"/>
            <asp:ButtonField ButtonType="Button" CommandName="datei" HeaderText="" Text="öffnen"/>  
                                               
          </columns>          
      </asp:GridView>
     
        </div>
        
    </form>
</body>
</html>
