<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FirstAppWebForm.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
    
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div>
            <h1 style="text-align:center" >Preventivo Auto</h1>
                </div>
            
            <h1>Seleziona auto:</h1>
           <div class="row">
               <div class="d-flex col-12">
             <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                 <asp:ListItem Value="Seleziona auto" Text="Seleziona auto"></asp:ListItem>
                   <asp:ListItem Value="Audi A7 3.0 Sline" id="auto1" Text="Audi A7 3.0 Sline"></asp:ListItem>
                   <asp:ListItem Value="BMW 440I Groun Coupè" id="auto2" Text="BMW 440I Groun Coupè"></asp:ListItem>
                   <asp:ListItem Value="Porsche 911 Carrera 4S" id="auto3" Text="Porsche 911 Carrera 4S"></asp:ListItem>
                   <asp:ListItem Value="Mercedes-Benz AMG GT" id="auto4" Text="Mercedes-Benz AMG GT"></asp:ListItem>
             </asp:DropDownList>
                   </div>
               <br />
               <div class="d-flex col-12 justify-content-end">
                <asp:Image ID="Image1" Width="500px" runat="server" /> 
                    </div>
                    <div class="d-flex justify-content-end fs-3">
                     <p class="fw-bold" id="modelloautomobile" runat="server"></p>
                    </div>  
               <hr />
               
            <h3>OPTIONAL:</h3>
                <div class="d-flex col mb-5">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3" CellSpacing="5">
                    <asp:ListItem Value="330" id="VerniceCheck" Text="Vernice Metallizzata (+ $300)"></asp:ListItem>
                    <asp:ListItem Value="180" id="FariXenoCheck" Text="Fari Xeno (+ $180)"></asp:ListItem>
                    <asp:ListItem Value="1800" id="SistNavCheck" Text="Sistema Navigazione Satellitare (+ $1800)"></asp:ListItem>
                    <asp:ListItem Value="2000" id="LineAssCheck" Text="Line Assistant (+ $2000)"></asp:ListItem>
                    <asp:ListItem Value="155" id="RuotaScortaCheck" Text="Ruota di scorta (+ $155)"></asp:ListItem>
                    <asp:ListItem Value="700" id="SediliPelleCheck" Text="Sedili in Pelle (+ $700)"></asp:ListItem>
                    <asp:ListItem Value="700" id="VolantePelleCheck" Text="Volante in pelle (+ $700)"></asp:ListItem>
                </asp:CheckBoxList>
                    </div>
               <hr />

               <h3>Garanzia:</h3>
               <p>Numero di anni di garanzia (+ $120,00 Cad.)</p>
               <div class="mb-5">
                   <asp:DropDownList ID="DropDownList2" runat="server" Width="300px">
                       <asp:ListItem Value="0" Text=""></asp:ListItem>
                       <asp:ListItem Value="1" Text="1"></asp:ListItem>
                       <asp:ListItem Value="2" Text="2"></asp:ListItem>
                       <asp:ListItem Value="3" Text="3"></asp:ListItem>
                       <asp:ListItem Value="4" Text="4"></asp:ListItem>
                   </asp:DropDownList>
               </div>
               <hr />

               </div>

           <div class="d-flex justify-content-center flex-column">
               <p class="fw-bold">Totale Optional $: <span id="totaleOptionalauto" runat="server">0.00</span></p>
               <p class="fw-bold">Totale Garanzia $: <span id="totaleGaranziaAuto" runat="server">0.00</span></p>
                <p class="fw-bold">Totale Auto $: <span id="totaleAuto" runat="server">0.00</span></p>
           </div>
            
            <div class="d-flex justify-content-end">
                <asp:Button ID="Button1" runat="server" Text="Calcola Preventivo" OnClick="Button1_Click" CssClass="btn btn-warning" />
            </div>
        </div>
        
    </form>
</body>
</html>
