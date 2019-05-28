@php
/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: show.blade.php
| Camada: View
| Descrição: Exibe detalhes de um incidente específico
| Última atualização: 26/05/2019
*/
@endphp

@extends('layouts.app')

@section('title', 'Detalhes do Incidente')

@section('content')

<div class="container">

        <h3 class="text-center alert alert-success subtitulo_painel">{{$incident->title}}</h3>

    <div class="row">
      <div class="col-8">
        <br><p style="font-weight: bold; font-size: 18px; text-transform: uppercase;">Informações cadastradas:</p>
      </div>
      <div class="col-4 text-right">
          <div class="form-group text-right">
            <a class="btn btn-dark mr-2 mt-2" href="{{ route('incidents.index' )}}" role="button" data-toggle="tooltip" data-placement="left" title="Retornar à página principal"><i class="fa fa-home"></i></a>
           <a class="btn btn-success mr-2 mt-2" href="{{route('incidents.edit', $incident->id)}}" role="button" data-toggle="tooltip" data-placement="top" title="Editar o registro de incidente"><i class="fa fa-pencil-square-o"></i></a>
            <a class="btn btn-danger mt-2" href="{{route('incidents.destroy', $incident->id)}}" onclick="return confirm('Tem certeza que deseja excluir o registro de incidente?')" role="button" data-toggle="tooltip" data-placement="bottom" title="Excluir o registro de incidente"><i class="fa fa-trash-o"></i></a>
          </div>
      </div>
    </div>

        <p><strong>Id:</strong> {{$incident->id}}</p>

        <p class="text-justify"><strong>Descrição:</strong> {{$incident->description}}</p>

        <p><strong>Criticidade:</strong>
         @if($incident->criticality == 1)
            Baixa
          @elseif($incident->criticality == 2)
            Média
          @elseif($incident->criticality == 3)
            Alta
          @endif
          </p>

        <p><strong>Tipo de incidente:</strong>
          @if($incident->type == 1)
            Ataque force brute
          @elseif($incident->type == 2)
            Credenciais vazadas
          @elseif($incident->type == 3)
            Ataque de DDoS
          @elseif($incident->type == 4)
            Atividades anormais de usuários
          @endif
          </p>

          <p><strong>Status:</strong>
          @if($incident->status == true)
            Fechado
          @else
            Aberto
          @endif
          </p>

         <?php
            $data_created =  $incident->created_at;
            $data_updated = $incident->updated_at;
         ?>

          <p><strong>Registrado em: </strong> <?php echo date_format($data_created, "d/m/Y - H:i:s") ?></p>

          <?php
                if($data_updated != $data_created){
                    echo "<p><strong>Atualizado em: </strong>" . date_format($data_updated, "d/m/Y - H:i:s") . "</p>";
                }
            ?>

</div>

@endsection


