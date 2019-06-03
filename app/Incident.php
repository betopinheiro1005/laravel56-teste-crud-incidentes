<?php

/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: app/Incident.php
| Camada: Model
| Descrição: Permite criar queries com o Eloquent nas manipulações com a tabela de incidentes
| Última atualização: 26/05/2019
*/

namespace App;

use Illuminate\Database\Eloquent\Model;

class Incident extends Model
{
    protected $fillable = [
        'title', 'description', 'criticality', 'type', 'status'
    ];
}
