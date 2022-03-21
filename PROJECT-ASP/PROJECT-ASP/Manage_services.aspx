<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Side.Master" AutoEventWireup="true" CodeBehind="Manage_services.aspx.cs" Inherits="PROJECT_ASP.WebForm7" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="wrapper">

        <div class="form-w3layouts">
            <!-- page start-->
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Services Details
                        </header>
                        <div class="panel-body">
                            <div class="position-center">

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Title</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Title"></asp:TextBox>


                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Description</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Description" Rows="2" TextMode="MultiLine"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Height="40px" RepeatLayout="Flow">
                                            <asp:ListItem Selected="True" Value="1">Active   </asp:ListItem>
                                            <asp:ListItem Value="0">Deactive</asp:ListItem>
                                        </asp:RadioButtonList>

                                </div>
                                <div class="form-group">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />  
                                    <asp:Image ID="Image1" runat="server" />

                                </div>

                                <div>
                                    <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                                </div>
                                <div>
                                    <%--<button type="submit" class="btn btn-info">Submit</button>--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-info" OnClick="Button1_Click"  />
                                </div>
                                <div class="checkbox">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("service_Id") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Title">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal9" runat="server" Text='<%# Eval("Title") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal10" runat="server" Text='<%# Eval("Description") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal11" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="image">
                                                <ItemTemplate>
                                                    <%--<asp:Image ID="Image1" runat="server" Height="81px" 
                                                        ImageUrl='<%# Eval("image", "~/uploads/{0}") %>' Width="78px" />--%>
                                                    <asp:Image ID="Image2" runat="server" Height="81px" 
                                                        ImageUrl='<%# Eval("img", "~/uploads/{0}") %>' Width="78px" />    

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="DELETE">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("service_Id") %>' Height="50px" ImageUrl="~/SRC/delete.png" OnClientClick="return confirm('Are You sure ?')" Width="50px" OnClick="ImageButton1_Click" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="EDIT">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("service_Id") %>' Height="40px" ImageUrl="~/SRC/Edit.png" OnClick="ImageButton2_Click" Width="40px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>


                            </div>

                        </div>
                    </section>

                </div>
            </div>

            <!-- page end-->
        </div>

    </section>

</asp:Content>
