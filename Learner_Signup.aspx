<%@ Page Title="" Language="C#" MasterPageFile="~/RS_Site.Master" AutoEventWireup="true" CodeBehind="Learner_Signup.aspx.cs" Inherits="RS_Project.Learner_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br/>

        <div class="container" style="box-shadow: -1px -1px 31px 16px rgba(0,0,0,0.75);
-webkit-box-shadow: -1px -1px 31px 16px rgba(0,0,0,0.75);
-moz-box-shadow: -1px -1px 31px 16px rgba(0,0,0,0.75);">
            <br/>
            <div class="row">

                <div class="col-md-12">
                <h1 class="jumbotron bg-primary text_white text-center">Student SignUp</h1>
                </div>
         </div>       

        <div class ="row">

            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br/>
                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
                <br/>
             <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname Name" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Surname Name is Required"></asp:RequiredFieldValidator>
                <br/>
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                <br/>
             <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be within 18 to 60" ControlToValidate="AgeTextBox" CultureInvariantValues="True" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="18" SetFocusOnError="True" Type="Integer" Visible="True"></asp:RangeValidator>
                <br/>
            <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>           
           <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                </div>

            <div class="col-md-4">
             <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
                <br/>
             <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br/>
            <asp:TextBox ID="ExperienceTextBox"  Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Experience" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ControlToValidate="ExperienceTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator>
                <br/>
            <asp:TextBox ID="CourseTextBox" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Course" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="CourseTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Course is Required"></asp:RequiredFieldValidator>
            </div>
            
            <div class="col-md-4" >


                
                <asp:TextBox ID="ContactTextBox" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="CourseTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="Contact Number is Required"></asp:RequiredFieldValidator>
                <br/>
                 <asp:DropDownList ID="InstructorPrefferedDropDownList" CssClass="form-control" runat="server">
                     <asp:ListItem>Select Instructor</asp:ListItem>
                    <asp:ListItem>Instructor1</asp:ListItem>
                    <asp:ListItem>Instructor2</asp:ListItem>
                    <asp:ListItem>Instructor3</asp:ListItem>
                     <asp:ListItem>Others</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <asp:RequiredFieldValidator InitialValue="Select Instructor" ControlToValidate="InstructorPrefferedDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Instructor is Required"></asp:RequiredFieldValidator>
                  <br/>
                 <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                <br/>
                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox"  ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="PasswordTextBox" ID="RegularExpressionValidator1"  ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Please Enter Strong Password" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" ></asp:RegularExpressionValidator>
                
                <br/>
                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Both Password Must Be Identical"></asp:CompareValidator>    
            </div>
            </div>
            <br/>
            <div class="row">

                <div class="col-md-4 mx-auto">
                    <asp:Button ID="StudentSignUpButton" OnClick="LearnerSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
            </div>
         

    </div>   
   
    </div>
</asp:Content>
