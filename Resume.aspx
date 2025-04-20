<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="Laba1.Resume" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Резюме сотрудника</title>
    <script type="text/javascript">
        function moveItem(sourceId, targetId) {
            var src = document.getElementById(sourceId);
            var tgt = document.getElementById(targetId);
            if (src.selectedIndex >= 0) {
                var option = src.options[src.selectedIndex];
                tgt.add(new Option(option.text, option.value));
                src.remove(src.selectedIndex);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Резюме сотрудника</h2>

        <asp:Label Text="ФИО:" runat="server" AssociatedControlID="txtName" />
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtName" ErrorMessage="Обязательно " runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Возраст:" runat="server" AssociatedControlID="txtAge" />
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtAge" ErrorMessage="Обязательно " runat="server" ForeColor="Red" />
        <asp:RangeValidator ControlToValidate="txtAge" MinimumValue="18" MaximumValue="100" Type="Integer" ErrorMessage="18-100" runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Мобильный телефон:" runat="server" AssociatedControlID="txtPhone" />
        <asp:TextBox ID="txtPhone" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtPhone" ErrorMessage="Обязательно " runat="server" ForeColor="Red" />
        <asp:RegularExpressionValidator ControlToValidate="txtPhone" ValidationExpression="^\+?\d{10,15}$" ErrorMessage="Неправильный номер телефона" runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Почта:" runat="server" AssociatedControlID="txtEmail" />
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtEmail" ErrorMessage="Обязательно " runat="server" ForeColor="Red" />
        <asp:RegularExpressionValidator ControlToValidate="txtEmail" ValidationExpression="^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$" ErrorMessage="Неправильный электронный адрес" runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Языки:" runat="server" AssociatedControlID="txtLanguages" />
        <asp:TextBox ID="txtLanguages" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtLanguages" ErrorMessage="Обязательно " runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Образование/специальность:" runat="server" AssociatedControlID="txtEducation" />
        <asp:TextBox ID="txtEducation" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtEducation" ErrorMessage="Обязательно " runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Опыт работы:" runat="server" AssociatedControlID="txtExperience" />
        <asp:TextBox ID="txtExperience" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtExperience" ErrorMessage="Обязательно " runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Последнее место работы/должность:" runat="server" AssociatedControlID="txtLastJob" />
        <asp:TextBox ID="txtLastJob" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtLastJob" ErrorMessage="Обязательно " runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Стаж работы (лет):" runat="server" AssociatedControlID="txtTotalExp" />
        <asp:TextBox ID="txtTotalExp" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtTotalExp" ErrorMessage="Обязательно " runat="server" ForeColor="Red" />
        <asp:RangeValidator ControlToValidate="txtTotalExp" MinimumValue="0" MaximumValue="80" Type="Integer" ErrorMessage="0-80" runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Адрес:" runat="server" AssociatedControlID="txtAddress" />
        <asp:TextBox ID="txtAddress" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtAddress" ErrorMessage="Обязательно " runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Желаемая должность:" runat="server" AssociatedControlID="txtPosition" />
        <asp:TextBox ID="txtPosition" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtPosition" ErrorMessage="Обязательно " runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Желаемая зарплата(руб.):" runat="server" AssociatedControlID="txtSalary" />
        <asp:TextBox ID="txtSalary" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="txtSalary" ErrorMessage="Обязательно " runat="server" ForeColor="Red" />
        <asp:RegularExpressionValidator ControlToValidate="txtSalary" ValidationExpression="^(?:[1-9][0-9]{0,4}|0)$" ErrorMessage="Неккоректная ЗП (0-99999)" runat="server" ForeColor="Red" /><br />

        <asp:Label Text="Ключевые навыки:" runat="server" /><br />
        <asp:ListBox ID="lbAllSkills" runat="server" SelectionMode="Single" Width="150" Height="100">
            <asp:ListItem>Командная работа</asp:ListItem>
            <asp:ListItem>Лидерство</asp:ListItem>
            <asp:ListItem>Коммуникация</asp:ListItem>
            <asp:ListItem>Решение проблем</asp:ListItem>
            <asp:ListItem>Тайм менеджмент</asp:ListItem>
            <asp:ListItem>Программирование</asp:ListItem>
            <asp:ListItem>Управление проектами</asp:ListItem>
            <asp:ListItem>Креативность</asp:ListItem>
            <asp:ListItem>Аналитическое мышление</asp:ListItem>
            <asp:ListItem>Способность к адаптации</asp:ListItem>
        </asp:ListBox>
        <asp:Button ID="btnAddSkill" runat="server" Text="&gt;&gt;" OnClientClick="moveItem('lbAllSkills','lbSelectedSkills'); return false;" />
        <asp:Button ID="btnRemoveSkill" runat="server" Text="&lt;&lt;" OnClientClick="moveItem('lbSelectedSkills','lbAllSkills'); return false;" />
        <asp:ListBox ID="lbSelectedSkills" runat="server" SelectionMode="Single" Width="150" Height="100"></asp:ListBox>
        
        
        <asp:HiddenField ID="hdnSelectedSkills" runat="server" />

        <asp:Button ID="btnSubmit" runat="server" Text="Отправить" OnClick="btnSubmit_Click" OnClientClick="return saveSelectedSkills();" />
    </form>
    <script type="text/javascript">
        function validateSkills(sender, args) {
            var lb = document.getElementById('<%= lbSelectedSkills.ClientID %>');
            args.IsValid = lb.options.length > 0;
        }
        
        function saveSelectedSkills() {
            var lb = document.getElementById('<%= lbSelectedSkills.ClientID %>');
            var hdnField = document.getElementById('<%= hdnSelectedSkills.ClientID %>');
            var selectedSkills = [];
            
            for (var i = 0; i < lb.options.length; i++) {
                selectedSkills.push(lb.options[i].text);
            }
            
            hdnField.value = selectedSkills.join('|');
            return true;
        }
    </script>
</body>
</html>
