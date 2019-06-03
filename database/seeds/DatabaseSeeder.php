<?php

/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: database/seeds/DatabaseSeeder.php
| Camada: Model
| Descrição: Chama o seed IncidentsTableSeeder para ser executado
| Última atualização: 26/05/2019
*/

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(IncidentsTableSeeder::class);
    }
}
