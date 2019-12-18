$(document).ready(function (){
    var tipo = $('#txtTipo').val();
    
    if(tipo === "ADMINISTRADOR"){
        cuentaAdministrador();
    }
    else if(tipo === "CLIENTE"){
        cuentaUsuario();
    }
    else if(tipo === "USUARIO"){
        cuentaVendedor();
    }
    else{
        cuentaNegada();
        $('.BotonADD').click(function (){
            $(location).attr('href',"Login.jsp");
        });
    }
});

function cuentaAdministrador(){
    $('#lnkAdm').show();
    $('#lnkLogout').show();
    $('#lnkLogin').hide();
    $('.BotonModificar').show();
    $('#lnkUsu').hide();
}
function cuentaUsuario(){
    $('#lnkLogout').show();
    $('#lnkLogin').hide();
    $('#lnkAdm').hide();
    $('.BotonModificar').hide();
    $('#lnkUsu').hide();
}

function cuentaVendedor(){
    $('#lnkAdm').hide();
    $('#lnkLogout').show();
    $('#lnkLogin').hide();
    $('#lnkUsu').show();
    $('.BotonModificar').hide();
}
function cuentaNegada(){
    $('#lnkCompra').hide();
    $('#lnkLogin').show();
    $('#lnkLogout').hide();
    $('#lnkAdm').hide();
    $('.BotonModificar').hide();
    $('#lnkUsu').hide();
    $('#lnkPerfil').hide();
}
