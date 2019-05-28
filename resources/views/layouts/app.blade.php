@php
/*
|--------------------------------------------------------------------------
| Cadastro de Incidentes
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: app.blade.php
| Camada: View
| Descrição: Arquivo de template principal usado para evitar repetição de código
| Última atualização: 26/05/2019
*/
@endphp

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>@yield('title', 'Default') | Administração</title>
	<link rel="stylesheet"  href="{{ asset('/css/bootstrap.css')}}">
	<link rel="stylesheet"  href="{{ asset('/css/font-awesome.min.css')}}">
	<link rel="stylesheet"  href="{{ asset('/css/styles.css')}}">
	<link href="https://fonts.googleapis.com/css?family=Sriracha&display=swap" rel="stylesheet">
</head>
<body>

	<div class="container">

		@include('partials/navadmin')

		<div class="card mt-3">
		  <div class="card-header">
		    <h2 class="text-center titulo_painel">@yield('title')</h2>
		    {{-- <h2 class="text-center">{{$incident->title}}</h2> --}}
		  </div>
		  <div class="card-body">
		    <p class="card-text">@yield('content')</p>
		  </div>
		</div>

		<div class="text-white bg-dark text-center p-2 mb-3 mt-3" role="alert">
  			<a style="color: yellow" href="http://www.oriontecinfo.com.br/">OrionTecInfo</a> - By: Roberto Pinheiro - Copyright &copy; <?php echo date('Y'); ?> - Todos os direitos reservados.
  		</div>

	</div>

   <script src="{{ asset('/js/popper.min.js')}}"></script>
   <script src="{{ asset('/js/jquery.js')}}"></script>
   <script src="{{ asset('/js/bootstrap.js')}}"></script>

	<script>
		$(document).ready(function(){
  			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>

</body>
</html>