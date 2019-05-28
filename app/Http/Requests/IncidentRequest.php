<?php

/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: IncidentRquest.php
| Categoria: Requests
| Descrição: Regras de validação para os formulários de incidentes (de criação e edição)
| Última atualização: 26/05/2019
*/

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class IncidentRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'title'         =>  'required|min:5|max:80',
            'description'   =>  'required|min:8',
            'criticality'   =>  'required',
            'type'          =>  'required'
        ];

    }
}
