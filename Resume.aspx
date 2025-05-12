<%@ Page Title="Резюме" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="Laba1.Resume" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-4">
        <div class="card shadow">
            <div class="card-header bg-primary text-white">
                <h2 class="mb-0">Форма резюме специалиста</h2>
            </div>
            <div class="card-body">
                <div class="row mb-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="ФИО:" runat="server" AssociatedControlID="txtName" />
                            <asp:TextBox ID="txtName" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ControlToValidate="txtName" ErrorMessage="Поле ФИО обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Возраст:" runat="server" AssociatedControlID="txtAge" />
                            <asp:TextBox ID="txtAge" CssClass="form-control" runat="server" TextMode="Number" />
                            <asp:RequiredFieldValidator ControlToValidate="txtAge" ErrorMessage="Поле Возраст обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                            <asp:RangeValidator ControlToValidate="txtAge" MinimumValue="18" MaximumValue="100" Type="Integer" 
                                ErrorMessage="Возраст должен быть от 18 до 100 лет" runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Мобильный телефон:" runat="server" AssociatedControlID="txtPhone" />
                            <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" placeholder="+7XXXXXXXXXX" />
                            <asp:RequiredFieldValidator ControlToValidate="txtPhone" ErrorMessage="Поле Телефон обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                            <asp:RegularExpressionValidator ControlToValidate="txtPhone" ValidationExpression="^\+?\d{10,15}$" 
                                ErrorMessage="Неверный формат номера телефона" runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Email:" runat="server" AssociatedControlID="txtEmail" />
                            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email" />
                            <asp:RequiredFieldValidator ControlToValidate="txtEmail" ErrorMessage="Поле Email обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                            <asp:RegularExpressionValidator ControlToValidate="txtEmail" 
                                ValidationExpression="^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$" 
                                ErrorMessage="Неверный формат электронной почты" runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Языки:" runat="server" AssociatedControlID="txtLanguages" />
                            <asp:TextBox ID="txtLanguages" CssClass="form-control" runat="server" placeholder="Русский, Английский..." />
                            <asp:RequiredFieldValidator ControlToValidate="txtLanguages" ErrorMessage="Поле Языки обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Образование/специальность:" runat="server" AssociatedControlID="txtEducation" />
                            <asp:TextBox ID="txtEducation" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ControlToValidate="txtEducation" ErrorMessage="Поле Образование обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Опыт работы:" runat="server" AssociatedControlID="txtExperience" />
                            <asp:TextBox ID="txtExperience" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="3" />
                            <asp:RequiredFieldValidator ControlToValidate="txtExperience" ErrorMessage="Поле Опыт работы обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Последнее место работы/должность:" runat="server" AssociatedControlID="txtLastJob" />
                            <asp:TextBox ID="txtLastJob" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ControlToValidate="txtLastJob" ErrorMessage="Поле Последнее место работы обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Стаж работы (лет):" runat="server" AssociatedControlID="txtTotalExp" />
                            <asp:TextBox ID="txtTotalExp" CssClass="form-control" runat="server" TextMode="Number" />
                            <asp:RequiredFieldValidator ControlToValidate="txtTotalExp" ErrorMessage="Поле Стаж работы обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                            <asp:RangeValidator ControlToValidate="txtTotalExp" MinimumValue="0" MaximumValue="80" Type="Integer" 
                                ErrorMessage="Стаж работы должен быть от 0 до 80 лет" runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Адрес:" runat="server" AssociatedControlID="txtAddress" />
                            <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ControlToValidate="txtAddress" ErrorMessage="Поле Адрес обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Желаемая должность:" runat="server" AssociatedControlID="txtPosition" />
                            <asp:TextBox ID="txtPosition" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ControlToValidate="txtPosition" ErrorMessage="Поле Желаемая должность обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <asp:Label CssClass="form-label" Text="Желаемая зарплата (руб.):" runat="server" AssociatedControlID="txtSalary" />
                            <asp:TextBox ID="txtSalary" CssClass="form-control" runat="server" TextMode="Number" />
                            <asp:RequiredFieldValidator ControlToValidate="txtSalary" ErrorMessage="Поле Желаемая зарплата обязательно для заполнения" 
                                runat="server" CssClass="text-danger" Display="Dynamic" />
                            <asp:RegularExpressionValidator ControlToValidate="txtSalary" ValidationExpression="^(?:[1-9][0-9]{0,4}|0)$" 
                                ErrorMessage="Некорректная зарплата (0-99999)" runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-12">
                        <h4 class="mb-3">Ключевые навыки</h4>
                        <div class="row">
                            <div class="col-md-5">
                                <div class="mb-2">
                                    <label class="form-label">Доступные навыки:</label>
                                </div>
                                <asp:ListBox ID="lbAllSkills" runat="server" SelectionMode="Single" CssClass="form-select" Height="200px">
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
                            </div>
                            <div class="col-md-2 d-flex flex-column align-items-center justify-content-center">
                                <asp:Button ID="btnAddSkill" runat="server" Text="→" CssClass="btn btn-primary mb-2" 
                                    OnClientClick="moveItem('MainContent_lbAllSkills','MainContent_lbSelectedSkills'); return false;" />
                                <asp:Button ID="btnRemoveSkill" runat="server" Text="←" CssClass="btn btn-secondary" 
                                    OnClientClick="moveItem('MainContent_lbSelectedSkills','MainContent_lbAllSkills'); return false;" />
                            </div>
                            <div class="col-md-5">
                                <div class="mb-2">
                                    <label class="form-label">Выбранные навыки:</label>
                                </div>
                                <asp:ListBox ID="lbSelectedSkills" runat="server" SelectionMode="Single" CssClass="form-select" Height="200px"></asp:ListBox>
                                <asp:CustomValidator ID="cvSelectedSkills" runat="server" ErrorMessage="Выберите хотя бы один навык" 
                                    ClientValidationFunction="validateSkills" CssClass="text-danger" Display="Dynamic"></asp:CustomValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <asp:HiddenField ID="hdnSelectedSkills" runat="server" />

                <div class="row">
                    <div class="col-12 text-center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Сгенерировать XML" CssClass="btn btn-success" 
                            OnClick="btnSubmit_Click" OnClientClick="return saveSelectedSkills();" />
                    </div>
                </div>
            </div>
        </div>
    </div>

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

        function validateSkills(sender, args) {
            var lb = document.getElementById('<%=lbSelectedSkills.ClientID %>');
            args.IsValid = lb.options.length > 0;
        }
        
        function saveSelectedSkills() {
            var lb = document.getElementById('<%=lbSelectedSkills.ClientID %>');
            var hdnField = document.getElementById('<%=hdnSelectedSkills.ClientID %>');
            var selectedSkills = [];
            
            for (var i = 0; i < lb.options.length; i++) {
                selectedSkills.push(lb.options[i].text);
            }
            
            hdnField.value = selectedSkills.join('|');
            return Page_ClientValidate();
        }
    </script>

</asp:Content>
