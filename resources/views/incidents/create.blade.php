@php
/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: resources/views/incidents/create.blade.php
| Camada: View
| Descrição: Formulário para registrar um incidente no sistema
| Última atualização: 26/05/2019
*/
@endphp

@extends('layouts.app')

@section('title','Cadastrar Incidente')

@section('content')

		<div class="row">
			<div class="col-4 text-left">
	          	<div class="form-group">
		        	<a class="btn btn-dark mb-2" href="{{ route('incidents.index' )}}" data-toggle="tooltip" data-placement="left" title="Retornar à página principal"><i class="fa fa-home"></i></a>
				</div>
			</div>
			<div class="col-8 text-right">
				<h5>* Informação obrigatória</h5>
			</div>
		</div>

		@if(count($errors) > 0)
			<div class="alert alert-danger alert-dismissible" role="alert">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<p style="font-weight: bold">Erros no preenchimento do formulário:</p>
					<ul>
						@foreach($errors->all() as $error)
							<li> {{$error}} </li>
						@endforeach
					</ul>
			</div>
		@endif

       {!! Form::open(['route' => 'incidents.store', 'method' => 'POST']) !!}

			<div class="form-group">
				{!! Form::label('title','Título (title) *', ['class' => 'font_label']) !!}
				{!! Form::text('title',null,['class' =>'form-control', 'placeholder' =>'Título do incidente'])!!}
			</div>

			<div class="form-group">
				{!! Form::label('description','Descrição (description) *', ['class' => 'font_label']) !!}
				{!! Form::textarea('description',null,['class' =>'form-control', 'placeholder' =>'Descrição do incidente', 'rows' => '5'])!!}
			</div>

			<div class="form-group">
				{!! Form::label('criticality','Criticidade (criticality) *', ['class' => 'font_label']) !!}
				{!! Form::select('criticality',['' => 'Selecione uma opção', 1 => 'Baixa', 2 => 'Média', 3 => 'Alta'],null,['class' =>'form-control'])!!}
			</div>

			<div class="form-group">
				{!! Form::label('type','Tipo (type) *', ['class' => 'font_label']) !!}
				{!! Form::select('type',['' => 'Selecione uma opção', 1 => 'Ataque Brute Force', 2 => 'Credenciais vazadas', 3 => 'Ataque de DDoS', 4 => 'Atividades anormais de usuário'],null,['class' =>'form-control'])!!}
			</div>

			<div class="form-group text-center mt-5">
				{!! Form::submit('Cadastrar', ['class' =>'btn btn-primary btn-lg']) !!}
			</div>

		{!! Form::close() !!}
@endsection
