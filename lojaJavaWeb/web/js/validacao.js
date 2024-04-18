
const inputNome = document.getElementsById('inName');
const inputEmail = document.getElementsById('inEmail');
const inputSenha = document.getElementsById('inPassword');
const inputCpf = document.getElementsById('inCpf');
const inputTelefone = document.getElementsById('inTelefone');
const inputDataNascimento = document.getElementsById('inDataNasc');
const btnSignin = document.getElementsById('btn_signin');
const btnSignup = document.getElementsById('btn_signup');

btnSignin.addEventListener('click', function () {
    if (inputEmail.value === "" || inputSenha.value === "") {
        alert("Preencha todos os campos corretamente!");
    }
});

btnSignup.addEventListener('click', function () {
    if (inputNome.value === ""
        || inputEmail.value === ""
        || inputSenha.value === ""
        || inputCpf.value === ""
        || inputTelefone === ""
        || inputDataNascimento === "") {
        alert("Prencha Corretamente todos os campos!");
    }
});