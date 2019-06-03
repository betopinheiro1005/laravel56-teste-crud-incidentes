<?php

/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: app/Http/Controllers/IncidentsController.php
| Camada: Controller
| Descrição: Controlador, tipo resource, com as funções de CRUD do sistema
| Última atualização: 26/05/2019
*/

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Incident;
use App\Http\Requests\IncidentRequest;
use Session;

class IncidentsController extends Controller
{
    public function index()
    {
        $total_incidents = count(Incident::all());
        $incidents = Incident::orderBy('id', 'desc')->paginate(5);
        return view('incidents.index', compact('incidents', 'total_incidents'));
    }

    public function create()
    {
        return view('incidents.create');
    }

    public function store(IncidentRequest $request)
    {
       Incident::create($request->all());
       Session::flash('message','Registro de incidente criado com sucesso!');
       return redirect('/incidents');
    }

    public function show($id)
    {
       $incident = Incident::find($id);
       return view('incidents.show',compact('incident'));
    }

    public function edit($id)
    {
       $incident = Incident::find($id);
       return view('incidents.edit',compact('incident'));
    }

    public function update(IncidentRequest $request, $id)
    {
        $incident = Incident::find($id);
        $incident->fill($request->all());
        $incident->save();
        Session::flash('message','Registro de incidente atualizado com sucesso!');
        return redirect('/incidents');
    }

    public function destroy($id)
    {
        $incident = Incident::find($id);
        $incident->delete();
        Session::flash('message','Registro de incidente excluído com sucesso!');
        return redirect('/incidents');
    }
}
