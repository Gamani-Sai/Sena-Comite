/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var mapear = {
    infoAprendriz: function (Nombre, Apellido, Identificacion, N_Ficha, Especialidad)
    {
        $("#Nombre").val(Nombre);
        $("#Identificacion").val(Identificacion);
        $("#Apellido").val(Apellido);
        $("#N_Ficha").val(N_Ficha);
        $("#Especialidad").val(Especialidad);

    },
    infoQueja: function (TipoQueja, Descricion)
    {
        $("#TipoQueja").val(TipoQueja);
        $("#Descricion").val(Descricion);
    }

};

