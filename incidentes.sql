-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2019 at 09:31 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incidentes`
--

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

CREATE TABLE `incidents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `criticality` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incidents`
--

INSERT INTO `incidents` (`id`, `title`, `description`, `criticality`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Expedita et ea quae quidem.', 'Et qui eligendi neque necessitatibus. Dolorem esse quae ea minima eligendi. Dignissimos qui veritatis unde praesentium aut. Doloremque ea rerum facilis quia eum.', '3', '3', 1, '2019-02-22 02:07:49', '2019-05-28 09:30:32'),
(2, 'At omnis asperiores explicabo qui soluta.', 'Commodi quod quaerat nesciunt est velit. Beatae debitis et velit minima. Autem harum nihil error iure exercitationem placeat vero eveniet. Magnam dignissimos a est velit nam iusto. Deserunt aut dicta voluptatem ex.', '2', '1', 0, '2019-05-27 17:34:18', '2019-05-28 09:30:33'),
(3, 'Minima dolor reiciendis nostrum rerum illo ut rerum odit.', 'Eum qui minima suscipit omnis alias. Quasi optio delectus quo ab. Cumque libero repellat expedita eos deleniti velit asperiores explicabo. Minus maiores magnam recusandae recusandae dolores.', '1', '2', 0, '2018-10-25 00:35:26', '2019-05-28 09:30:33'),
(4, 'Est inventore fuga eveniet et.', 'A quisquam aut earum natus quaerat animi. Iste nobis voluptatum voluptatum ut voluptates quibusdam autem. Accusamus fugit hic nam autem veniam inventore est dolorem. Corrupti quia eius veniam a totam error itaque.', '1', '2', 0, '2018-02-12 00:47:51', '2019-05-28 09:30:33'),
(5, 'Placeat consequatur quod illum aliquid sunt unde porro aut.', 'Deserunt maiores officia ut in laborum ratione et. Eum expedita laborum asperiores consequatur et. Consequatur mollitia eum et. Iure dolores inventore corporis nisi illum consequatur dolor.', '1', '2', 0, '2017-12-01 01:56:00', '2019-05-28 09:30:33'),
(6, 'Dolores beatae occaecati voluptatem consequuntur libero vel.', 'Quidem expedita architecto consequatur dolore ut error. Id optio et nulla. Et nesciunt eius nihil earum atque sint quibusdam et. Eum rerum rem hic id voluptas.', '1', '3', 0, '2017-08-13 18:09:19', '2019-05-28 09:30:33'),
(7, 'Est voluptas ullam est dolor reiciendis reprehenderit.', 'Adipisci temporibus quasi unde est ratione. Iure voluptatem voluptate nobis voluptatem at. Nam eum voluptates est voluptatibus quia dolor magni voluptatem. Cum impedit aut aut.', '2', '4', 1, '2018-04-18 03:05:35', '2019-05-28 09:30:33'),
(8, 'Beatae magnam et et perspiciatis molestiae.', 'Sed recusandae eos qui tempora. Tenetur deserunt et aut nemo ab. Quod voluptatem ut est. Vel ab architecto alias praesentium.', '3', '3', 0, '2019-02-02 06:38:18', '2019-05-28 09:30:33'),
(9, 'Placeat ea sit doloremque consequatur.', 'Mollitia necessitatibus dolorem et voluptatem tempore. Aperiam rerum assumenda eum maiores qui. Laborum maxime qui sint omnis quia inventore eos.', '2', '1', 1, '2017-09-10 11:51:05', '2019-05-28 09:30:33'),
(10, 'Dolores illo doloribus ut debitis.', 'Porro repellat deserunt fugiat vel. Eos perspiciatis possimus rerum cum. Mollitia accusamus incidunt commodi et quia et iusto iste. Praesentium ut ex itaque qui rem omnis.', '2', '4', 0, '2018-09-25 03:39:21', '2019-05-28 09:30:33'),
(11, 'Eum explicabo repellendus consequatur dolor animi in tempora hic.', 'Sed quia amet possimus libero laborum laudantium. Enim consequuntur eos eveniet ullam omnis qui ipsa necessitatibus. Beatae alias reprehenderit doloribus quam consequatur. Voluptatem voluptatem tempora facilis pariatur.', '3', '4', 0, '2018-08-31 02:15:28', '2019-05-28 09:30:33'),
(12, 'Doloribus sunt et ipsum qui quasi.', 'Hic sequi inventore quisquam tempore et porro. Rerum maiores iusto aut sequi. Non maxime ut excepturi ut quia enim. Fuga consequuntur eum dolore totam quae totam dolorem.', '3', '2', 1, '2018-05-16 20:50:39', '2019-05-28 09:30:33'),
(13, 'Harum quo consectetur ut accusantium vel.', 'Ut dolores adipisci voluptate omnis voluptatem et. Repellendus cupiditate earum enim tempora sit fugiat. Ut eveniet eligendi sint voluptatum deserunt quam quia. Illum corporis et tempora maxime atque illum veniam corporis. Rerum temporibus debitis ut similique blanditiis.', '2', '4', 0, '2018-11-16 19:26:03', '2019-05-28 09:30:33'),
(14, 'Quaerat impedit eos aut magnam distinctio vel et.', 'Aliquid aliquid sunt vel autem qui a voluptatem. Unde est amet quos aspernatur itaque. Sint mollitia deleniti fugit eligendi illo doloremque consequuntur. Aspernatur vitae expedita voluptates.', '2', '1', 0, '2017-10-11 20:33:05', '2019-05-28 09:30:33'),
(15, 'Non saepe est accusamus.', 'Dolorem occaecati occaecati magni architecto aut magnam impedit. Rerum voluptatem vitae eos perspiciatis aut. Enim non explicabo dolore cum expedita aut voluptatem qui. Ipsum eum quasi sequi sint.', '1', '1', 1, '2018-12-02 02:25:44', '2019-05-28 09:30:33'),
(16, 'Ullam itaque maiores dolorem veritatis quaerat esse.', 'Aut doloremque tenetur ut. Ratione ullam consequatur fuga temporibus perferendis. Veniam rerum pariatur minima minima. Officia voluptatem qui fugiat fugit qui est. Alias atque non ut id adipisci eos.', '2', '2', 1, '2018-04-24 11:17:51', '2019-05-28 09:30:33'),
(17, 'Ut dolores eos et voluptatum possimus quam ullam.', 'Illo illum sit saepe et ab. Distinctio et est placeat sequi.', '3', '3', 0, '2017-11-29 21:30:00', '2019-05-28 09:30:33'),
(18, 'Velit quod est consequatur sunt a quasi esse dolor.', 'Consequuntur ut dolore ratione dicta. Dolorem ipsa ut aut distinctio at. Eum quis et cupiditate vitae.', '1', '2', 0, '2017-11-07 16:17:34', '2019-05-28 09:30:33'),
(19, 'Ea dicta repellat libero aliquam fugit sint eos.', 'Inventore est sit iusto architecto. Quia facilis vitae perferendis voluptatem inventore. Itaque eos earum repellat dolor sit assumenda quis voluptatem. Perspiciatis est in autem ea ipsam. Amet cupiditate autem eum dolorum et magni.', '3', '3', 1, '2019-03-27 01:47:13', '2019-05-28 09:30:33'),
(20, 'Quis dolorem saepe suscipit saepe officia.', 'Incidunt ab molestiae natus corrupti sint. Et optio similique sequi dolor nesciunt qui et. Sequi quaerat vel et assumenda quam. Et recusandae est qui est rem mollitia voluptas.', '1', '4', 0, '2018-06-10 21:27:05', '2019-05-28 09:30:33'),
(21, 'Id laboriosam id sed enim.', 'Nobis necessitatibus dolores veritatis eligendi. Eum fuga voluptas cupiditate esse repellendus. Eligendi cum et delectus inventore quisquam iusto.', '2', '1', 0, '2017-08-30 10:27:32', '2019-05-28 09:30:33'),
(22, 'Nulla perspiciatis et non autem laboriosam vero voluptatem.', 'Quas voluptas labore ullam ab illo. Aut in dolores et aspernatur libero voluptatem doloremque non. Iste autem quia dolorem tempora.', '2', '2', 0, '2018-06-07 02:52:29', '2019-05-28 09:30:34'),
(23, 'Laborum eum quo optio assumenda quos.', 'Ad error excepturi in corporis reiciendis quo. Ut pariatur sed laborum excepturi est quia.', '3', '1', 1, '2018-06-17 06:03:17', '2019-05-28 09:30:34'),
(24, 'Esse reiciendis corrupti earum consectetur autem.', 'Sunt quidem delectus et ut rerum laboriosam. Tempore totam veritatis quibusdam praesentium aut velit. Ut in ex et placeat explicabo praesentium.', '3', '4', 1, '2018-10-14 18:44:14', '2019-05-28 09:30:34'),
(25, 'Eum minima dolor ullam dolorem id ex molestiae.', 'Aut aspernatur voluptatem praesentium quo cupiditate excepturi. Illo dicta laborum velit autem voluptate rerum. Distinctio alias consequatur qui magnam.', '2', '3', 1, '2017-11-03 11:43:21', '2019-05-28 09:30:34'),
(26, 'Quod sunt explicabo est.', 'Sequi aliquam officia voluptatem aut sit. Qui nulla quidem perferendis reprehenderit velit ipsum. Quae nam placeat cupiditate illum enim aut. Eaque molestiae veniam aut non ut quo sed qui.', '2', '2', 1, '2018-05-03 05:16:29', '2019-05-28 09:30:34'),
(27, 'Magnam odio qui repudiandae rerum non error dolorem.', 'Cupiditate molestias beatae est repellendus saepe ut odit. Dolorem expedita consequatur omnis sint vel neque.', '2', '3', 0, '2017-12-22 15:17:51', '2019-05-28 09:30:34'),
(28, 'Tempore illum dicta id quas perferendis.', 'Ut error officia nihil officia. Expedita mollitia distinctio nobis quo sit tempora doloribus. Repudiandae error sequi molestiae qui quibusdam. Nam nostrum sint sit cumque doloremque.', '1', '2', 0, '2019-04-21 20:59:33', '2019-05-28 09:30:34'),
(29, 'Praesentium impedit esse voluptatem commodi voluptates temporibus rem.', 'Optio accusamus omnis exercitationem optio incidunt. Soluta praesentium incidunt recusandae voluptatem. Similique maxime qui quis nihil totam a sed.', '1', '4', 1, '2018-07-30 17:07:37', '2019-05-28 09:30:34'),
(30, 'Voluptatibus mollitia quia aspernatur neque soluta.', 'Error ea sunt ducimus officia corporis est hic. Et dignissimos alias commodi quisquam. Voluptatem molestiae est et saepe odio expedita. Ut reiciendis qui consectetur itaque possimus provident.', '2', '1', 0, '2019-03-07 05:19:23', '2019-05-28 09:30:34'),
(31, 'Ea assumenda velit soluta.', 'Suscipit atque aut harum harum soluta. Inventore dolores suscipit aspernatur corporis quis.', '1', '4', 0, '2017-07-28 20:01:50', '2019-05-28 09:30:34'),
(32, 'Et ea dolores veniam eos ut.', 'Sint optio quidem aliquid non iure minus qui. Soluta reiciendis molestiae earum molestiae dolore libero et. Et veritatis cumque ut est nihil.', '1', '4', 0, '2019-02-16 20:12:13', '2019-05-28 09:30:34'),
(33, 'Blanditiis occaecati asperiores sunt accusantium sed.', 'Sit consequatur quo totam dolores id non. Repellat odit sit eum quisquam repellendus mollitia sunt. Expedita aut non quas reiciendis. Quia dolorem beatae assumenda sed incidunt nulla fugiat.', '3', '1', 1, '2018-09-26 23:28:55', '2019-05-28 09:30:34'),
(34, 'Aliquid id necessitatibus non incidunt dolorem.', 'Modi aspernatur amet porro illo id totam eaque. Nisi modi dolores minima veniam neque. Et animi provident rerum cupiditate. Nam qui omnis non quos maiores nisi.', '3', '4', 1, '2018-10-05 08:50:15', '2019-05-28 09:30:34'),
(35, 'Qui accusamus ullam sed perferendis consequatur.', 'Officiis at cumque harum reprehenderit. Veniam voluptatum iusto itaque autem vel. Omnis officiis nihil dolores minima ex.', '1', '3', 0, '2018-12-02 04:07:38', '2019-05-28 09:30:34'),
(36, 'Recusandae quas in qui officiis iste corporis.', 'Cum porro enim et neque facere ea ut. Voluptate itaque eaque debitis voluptates. Facilis hic aperiam aut quam. Id sint ut et vitae rerum omnis est.', '1', '1', 1, '2017-10-12 20:07:05', '2019-05-28 09:30:34'),
(37, 'Est quia quia voluptas ipsam.', 'Dolores aperiam rerum culpa. Quas quasi molestiae laborum eum pariatur. Molestiae ullam aut similique. In itaque nesciunt et.', '2', '4', 1, '2018-02-28 13:10:16', '2019-05-28 09:30:34'),
(38, 'Sed maxime ea itaque perferendis incidunt qui quas distinctio.', 'Qui distinctio quia iste blanditiis qui est sed ea. Vitae tenetur eum aliquam accusamus est at. Distinctio mollitia aliquam veniam aut qui ipsa. Aut id est minus ad sunt quam.', '2', '1', 1, '2018-02-11 07:21:31', '2019-05-28 09:30:34'),
(39, 'Nostrum officia cumque repudiandae autem culpa est.', 'Nostrum aut aspernatur iste. Reprehenderit doloremque aut quia et cum ex. Nam quibusdam consequatur odit qui ea. Id fugiat quidem provident.', '1', '2', 0, '2017-10-12 02:03:28', '2019-05-28 09:30:34'),
(40, 'Blanditiis quaerat exercitationem inventore excepturi et et consequatur.', 'Accusantium assumenda ut temporibus totam fugiat magni aut beatae. Expedita occaecati et ea porro aperiam sit sequi. Assumenda itaque blanditiis consequatur.', '3', '3', 0, '2018-01-07 00:17:51', '2019-05-28 09:30:34'),
(41, 'Magnam quos labore voluptatibus eveniet vitae.', 'Reprehenderit provident velit nihil occaecati provident. Ut aut est esse molestias. Laudantium esse quod voluptatem minima. Voluptatem earum iste dolorum numquam sunt voluptas.', '1', '2', 1, '2017-10-19 23:35:34', '2019-05-28 09:30:34'),
(42, 'Dignissimos omnis quidem tenetur.', 'Et distinctio reiciendis ea quod corporis eius. Quas doloremque in aliquid ab iusto. Est est sit est quia doloribus autem. Aut quo optio voluptatem atque assumenda asperiores optio unde.', '3', '1', 1, '2019-03-18 14:03:35', '2019-05-28 09:30:35'),
(43, 'Accusamus amet ut ut corrupti sunt.', 'Ab sit autem quos inventore. Voluptatem repellat quo cumque tempore odit sunt minus.', '3', '2', 1, '2018-08-24 16:02:22', '2019-05-28 09:30:35'),
(44, 'Maiores tempora temporibus at qui error omnis nihil.', 'Nam voluptatem cupiditate aut et nesciunt ex voluptates. Sapiente sed molestiae fugiat et. In possimus facere ducimus maiores. Enim aut et quia.', '3', '2', 1, '2017-11-28 02:12:00', '2019-05-28 09:30:35'),
(45, 'Explicabo consequatur pariatur esse dolor ab iste sunt.', 'Minima dolorum voluptatem aliquam iste architecto delectus cumque. Sint non dicta sit facere distinctio earum. Possimus ducimus laboriosam nobis. Dolores non quaerat facilis autem dolorum.', '2', '3', 0, '2018-05-04 02:45:08', '2019-05-28 09:30:35'),
(46, 'Quis voluptatibus sequi aspernatur et tempore.', 'Consequuntur est quo officiis. Quod voluptatum dolore animi et. Quod iste quia dolor quo nostrum rerum id. Alias nostrum sunt rerum quibusdam.', '3', '4', 1, '2019-02-18 09:54:14', '2019-05-28 09:30:35'),
(47, 'Vazamento de credenciais de email corporativo', 'O endereço de email corporativo de um funcionário da empresa possui credenciais vazadas. Uma consulta feita no site Have I Been Pwned (https://haveibeenpwned.com/) permite detectar isso. A alteração da senha deste email deve ser realizada como medida de segurança preventiva.', '1', '2', 1, '2019-05-28 09:30:35', '2019-05-28 09:30:35'),
(48, 'Uso inadequado de email corporativo', 'Detectado violação de políticas de segurança da informação da empresa por parte de um funcionário que utiliza o email corporativo para realizar compras pessoais em sites da Internet. O usuário, de forma não intencional, pode deixar a rede de informações da empresa vulnerável ao acessar sites indevidos ou fazer downloads de origem duvidosa, uma vez que esses conteúdos podem conter agentes maliciosos.', '1', '4', 0, '2019-05-28 09:30:35', '2019-05-28 09:30:35'),
(49, 'Ataque de força bruta para acesso ao sistema', 'Foi verificado no arquivo de log uma tentativa de acesso ao sistema utilizando nomes de usuários comuns (admin, guest, root, test, etc.) em ataques de força bruta. Muitas tentativas de ataque ao usuário root. Dicionários sendo utilizados com senhas fracas. O IP do invasor foi identificado e necessita ser bloqueado.', '2', '1', 1, '2019-05-28 09:30:35', '2019-05-28 09:30:35'),
(50, 'Ataque com uso de botnets', 'Detectado grandes volumes de dados desconhecidos chegando em sequência de uma rede de computadores zumbis (botnets). Tal ocorrência ameaça derrubar o servidor da empresa deixando-o fora do ar. São necessárias medidas urgentes da equipe de segurança da informação desta empresa no sentido de neutralizar o ataque ou de mitigar suas possíveis consequências.', '3', '3', 0, '2019-05-28 09:30:35', '2019-05-28 09:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_25_002415_create_incidents_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incidents`
--
ALTER TABLE `incidents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
