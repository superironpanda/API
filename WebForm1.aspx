<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DropShipAPI.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#Label1").click(function () {
                var txt = $(this).html();
                //var json = {"products":[{"warehouse":"Mwave Warehouse","products":[{"inStock":3,"packages":[{"qty":3,"weight":1,"height":10,"width":10,"length":10,"unit":1,"upc":"B0736J539T","sku":"B0736J539T"}]}]}]};
                var obj = jQuery.parseJSON(txt);
                //alert(obj.products);
                console.log(obj);
                
                var result = txt.replace('{', " <br />");
                
                result = result.replace('[{', " <br />");
                result = result.replace(':[{', ": <br />");
                //result = result.replace('":"', '": <br />"');
                result = result.replace(',',", <br />")
                //result = result.replace('":',"$&\n" );
                result = result.replace(',"',', <br />"');
                document.getElementById("demo").innerHTML = result;
                
    });
});
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="LabelSKU" runat="server" text="SKU" />
            <br />
            <asp:TextBox ID="SKUTxt" runat="server" />
            <br />
            <br />
            <asp:Label ID="LabelUPC" runat="server" text="UPC" />
            <br />
            <asp:TextBox ID="UPCTxt" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <p id="demo"></p>

            <br />
            <div id="abc">

            </div>
        </div>
    </form>
</body>
</html>