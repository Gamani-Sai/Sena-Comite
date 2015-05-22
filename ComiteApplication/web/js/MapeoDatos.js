/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var mapear = {
    infoAprendriz: function (Id_Queja, Nombre, Apellido, Identificacion, N_Ficha, Especialidad)
    {
        $("#Id_Queja").val(Id_Queja);
        $("#Nombre").val(Nombre);
        $("#Identificacion").val(Identificacion);
        $("#Apellido").val(Apellido);
        $("#N_Ficha").val(N_Ficha);
        $("#Especialidad").val(Especialidad);

    },
    infoQueja: function (Id_QuejaMod, TipoQueja, Descricion)
    {
        $("#Id_QuejaMod").val(Id_QuejaMod);
        $("#TipoQueja").val(TipoQueja);
        $("#Descricion").val(Descricion);
    }

};

