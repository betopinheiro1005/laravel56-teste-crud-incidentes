<?php

/*
|--------------------------------------------------------------------------
| Sistema de Gerenciamento de Incidentes - SGI Versão 1.0
|--------------------------------------------------------------------------
| Autor: Roberto Pinheiro
| Arquivo: database/seeds/IncidentsTableSeeder.php
| Camada: Model
| Descrição: Define registros fixos a a quantidade de registros fakers que serão
| criados visando popular a tabela de incidentes para realização de testes no sistema
| Última atualização: 26/05/2019
*/

use Illuminate\Database\Seeder;

class IncidentsTableSeeder extends Seeder
{
    public function run()
    {

 		// Apaga todos os dados da tabela de incidentes
        DB::table('incidents')->truncate();

        factory('App\Incident', 46)->create();

        App\Incident::create([
            'title' => 'Vazamento de credenciais de email corporativo',
            'description'  => 'O endereço de email corporativo de um funcionário da empresa possui credenciais vazadas. Uma consulta feita no site Have I Been Pwned (https://haveibeenpwned.com/) permite detectar isso. A alteração da senha deste email deve ser realizada como medida de segurança preventiva.',
            'criticality' => 1,
            'type'  => 2,
            'status'  => true
        ]);

        App\Incident::create([
            'title' => 'Uso inadequado de email corporativo',
            'description'  => 'Detectado violação de políticas de segurança da informação da empresa por parte de um funcionário que utiliza o email corporativo para realizar compras pessoais em sites da Internet. O usuário, de forma não intencional, pode deixar a rede de informações da empresa vulnerável ao acessar sites indevidos ou fazer downloads de origem duvidosa, uma vez que esses conteúdos podem conter agentes maliciosos.',
            'criticality' => 1,
            'type'  => 4,
            'status'  => false
        ]);

        App\Incident::create([
            'title' => 'Ataque de força bruta para acesso ao sistema',
            'description'  => 'Foi verificado no arquivo de log uma tentativa de acesso ao sistema utilizando nomes de usuários comuns (admin, guest, root, test, etc.) em ataques de força bruta. Muitas tentativas de ataque ao usuário root. Dicionários sendo utilizados com senhas fracas. O IP do invasor foi identificado e necessita ser bloqueado.',
            'criticality' => 2,
            'type'  => 1,
            'status'  => true
        ]);

        App\Incident::create([
            'title' => 'Ataque com uso de botnets',
            'description'  => 'Detectado grandes volumes de dados desconhecidos chegando em sequência de uma rede de computadores zumbis (botnets). Tal ocorrência ameaça derrubar o servidor da empresa deixando-o fora do ar. São necessárias medidas urgentes da equipe de segurança da informação desta empresa no sentido de neutralizar o ataque ou de mitigar suas possíveis consequências.',
            'criticality' => 3,
            'type'  => 3,
            'status'  => false
        ]);

    }
}
