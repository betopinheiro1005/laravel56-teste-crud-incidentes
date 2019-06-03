@php
/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: resources/views/incidents/index.blade.php
| Camada: View
| Descrição: Exibe uma tabela responsiva com listagem dos registros de incidentes
| Última atualização: 26/05/2019
*/
@endphp

@extends('layouts.app')

@section('title', 'Registros de incidentes')

@section('content')

  @if(Session::has('message'))
    <div class="alert alert-success alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      {{Session::get('message')}}
    </div>
  @endif

  <div class="table-responsive">
    <table class="table table-striped">
      <thead>
        <th>Título</th>
        <th>Descrição resumida</th>
        <th>Criticidade</th>
        <th>Tipo</th>
        <th>Status</th>
        <th width="180px">Ações</th>
      </thead>

      <tbody>
        <tr>
          @foreach ($incidents as $incident)
          <td>{{$incident->title}}</td>
          <td>{{substr($incident->description, 0, 140)}}...</td>
          <td>
            @if($incident->criticality == 1)
              Baixa
            @elseif($incident->criticality == 2)
              Média
            @elseif($incident->criticality == 3)
              Alta
            @endif
          </td>
          <td>
            @if($incident->type == 1)
              Ataque force brute
            @elseif($incident->type == 2)
              Credenciais vazadas
            @elseif($incident->type == 3)
              Ataque de DDoS
            @elseif($incident->type == 4)
              Atividades anormais de usuários
            @endif
          </td>
          <td>
            @if($incident->status == true)
              Fechado
            @else
              Aberto
            @endif
          </td>
          <td>
            <a class="btn btn-primary mt-2" href="{{route('incidents.show', $incident->id)}}" role="button"  data-toggle="tooltip" data-placement="top" title="Exibir detalhes do incidente"><i class="fa fa-eye"></i></a>
            <a class="btn btn-success mt-2" href="{{route('incidents.edit', $incident->id)}}" role="button"  data-toggle="tooltip" data-placement="bottom" title="Editar registro de incidente"><i class="fa fa-pencil-square-o"></i></a>
            <a class="btn btn-danger mt-2" href="{{route('incidents.destroy', $incident->id)}}" onclick="return confirm('Tem certeza que deseja excluir o registro de incidente?')" role="button" data-toggle="tooltip" data-placement="top" title="Excluir registro de incidente"><i class="fa fa-trash-o"></i></a>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>

    <br>

    <div class="row">
      <div class="col-md-8 col-lg-6">
        {!! $incidents->render() !!}
      </div>
      <div class="col-xm-12 col-md-4 col-lg-6">
        <p style="font-size: 18px; float: right;">Total de incidentes: <span style="color: red;">{{ $total_incidents }}</span> </p>
      </div>
    </div>

  </div>

@endsection


