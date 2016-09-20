$(document).ready();{
    $('User:hidden').val(sessionStorage.key('User'));
    $('Password:hidden').val(sessionStorage.key('Password'));
}

function Login() {
    sessionStorage.setItem('User', $('#TextBox_AdminUserName').val());
    sessionStorage.setItem('Password', $('#TextBox_AdminPassword').val());
}