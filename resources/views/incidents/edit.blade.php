@extends('layouts.app')

@php
/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo:resources/views/incidents/edit.blade.php
| Camada: View
| Descrição: Formulário para editar um registro de incidente
| Última atualização: 26/05/2019
*/
@endphp

@section('title','Atualizar Incidente')

@section('content')


		<div class="row">
			<div class="col-4">
	          <div class="form-group text-left">
	            <a class="btn btn-dark mb-2" href="{{ route('incidents.index' )}}" role="button" data-toggle="tooltip" data-placement="top" title="Retornar a página principal"><i class="fa fa-home"></i></a>
	            <a class="btn btn-primary mb-2" href="{{route('incidents.show', $incident->id)}}" role="button" data-toggle="tooltip" data-placement="bottom" title="Exibir detalhes do incidente"><i class="fa fa-eye"></i></a>
	            <a class="btn btn-danger mb-2" href="{{route('incidents.destroy', $incident->id)}}" onclick="return confirm('Tem certeza que deseja excluir o registro de incidente?')" role="button" data-toggle="tooltip" data-placement="right" title="Eliminar o registro"><i class="fa fa-trash-o"></i></a>
	          </div>
			</div>
			<div class="col-8 text-right">
				<h5>* Informação obrigatória</h5>
			</div>
		</div>

			@if(count($errors) > 0)
				<div class="alert alert-danger alert-dismissible" role="alert">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<p style="font-weight: bold">Erro(s) no preenchimento do formulário:</p>
						<ul>
							@foreach($errors->all() as $error)
									<li> {{$error}} </li>
							@endforeach
						</ul>
				</div>
			@endif


           {!! Form::open(['route' => ['incidents.update', $incident->id], 'method' => 'PUT']) !!}

				<div class="form-group">
					{!! Form::label('title','Título (title) *', ['class' => 'font_label']) !!}
					{!! Form::text('title', $incident->title,['class' =>'form-control', 'placeholder' =>'Entre com o título do incidente'])!!}
				</div>

				<div class="form-group">
					{!! Form::label('description','Descrição (description) *', ['class' => 'font_label']) !!}
					{!! Form::textarea('description', $incident->description,['class' =>'form-control', 'placeholder' =>'Descrição do incidente', 'rows' => '5'])!!}
				</div>

				<div class="form-group">
					{!! Form::label('criticality','Criticidade (criticality) *', ['class' => 'font_label']) !!}
					{!! Form::select('criticality',['' => 'Selecione uma opção', 1 => 'Baixa', 2 => 'Média', 3 => 'Alta'],$incident->criticality,['class' =>'form-control'])!!}
				</div>

				<div class="form-group">
					{!! Form::label('type','Tipo (type) *', ['class' => 'font_label']) !!}
					{!! Form::select('type',['' => 'Selecione uma opção', 1 => 'Ataque Brute Force', 2 => 'Credenciais vazadas', 3 => 'Ataque de DDoS', 4 => 'Atividades anormais de usuário'],$incident->type,['class' =>'form-control'])!!}
				</div>

				<div class="form-group">
					{!! Form::label('status','Status *', ['class' => 'font_label']) !!}
					{!! Form::select('status',[false => 'Aberto', true => 'Fechado'],$incident->status,['class' =>'form-control'])!!}
				</div>

				<div class="form-group text-center mt-5">
					{!! Form::submit('Atualizar', ['class' =>'btn btn-success btn-lg mt-2']) !!}
				</div>

			{!! Form::close() !!}

@endsection



