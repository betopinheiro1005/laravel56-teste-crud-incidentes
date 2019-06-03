<?php

/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: database/factories/IncidentFactory.php
| Camada: Model
| Descrição: Factory que define registros fakers a serem criados para através de um seeder popular a tabela de incidentes
| Última atualização: 26/05/2019
*/

use Faker\Generator as Faker;

$factory->define(App\Incident::class, function (Faker $faker) {
    return [
        'title'=>$faker->sentence,
        'description'=>$faker->paragraph,
        'criticality' => $faker->randomElement($array = array (1, 2, 3)),
        'type' => $faker->randomElement($array = array (1, 2, 3, 4)),
        'status' => $faker->randomElement($array = array (false, true)),
		'created_at' => $faker->dateTimeBetween($startDate = '-2 years', $endDate = 'now', $timezone = null)
    ];
});
