@php
/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: navadmin.blade.php
| Camada: View
| Descrição: Barra de navegação padrão no cabeçalho com links para diversas páginas.
| Última atualização: 26/05/2019
*/
@endphp

<nav class="navbar navbar-expand-lg navbar-dark bg-dark mt-2">

  <a class="navbar-brand logo_empresa" href="http://www.oriontecinfo.com.br/">OrionTecInfo</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Incidentes
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="{{ route('incidents.index') }}">Listar</a>
          <a class="dropdown-item" href="{{ route('incidents.create') }}">Cadastrar</a>
        </div>
      </li>
    </ul>
  </div>

<div style="float-right" class="logo_aplicativo">Gerenciamento de Incidentes - SGI 1.0</div>

</nav>