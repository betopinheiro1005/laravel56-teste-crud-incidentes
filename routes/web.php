<?php

/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: routes/web.php
| Camtegoria: Routes
| Descrição: Registra as rotas da aplicação a serem criadas e se comunica com os controllers
| Última atualização: 26/05/2019
*/

Route::get('/', 'IncidentsController@index');

Route::resource('incidents', 'IncidentsController');

Route::get('incidents/{id}/destroy',[
	'uses' =>'IncidentsController@destroy',
	'as'   =>'incidents.destroy'
]);
