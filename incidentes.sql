-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2019 at 08:21 PM
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
(1, 'Odit necessitatibus est sunt totam.', 'Amet excepturi dolore tempore odio vitae dolor fugiat dolor. Perspiciatis voluptatem reprehenderit quia. Dicta sed et aut molestias. Iste maxime rem quas.', '3', '3', 0, '2018-04-04 06:52:25', '2019-05-27 18:21:06'),
(2, 'Ut inventore molestias molestiae dolor.', 'Quia voluptatem at cum velit vel. Minima vel asperiores nostrum dolor nisi debitis. Corrupti natus porro sed repellendus voluptas veniam ipsa.', '2', '4', 0, '2019-05-04 20:49:36', '2019-05-27 18:21:06'),
(3, 'Adipisci placeat repellat eveniet voluptas consequatur voluptatem.', 'Quia at est neque veritatis rerum impedit veritatis. Sed voluptatem reprehenderit ipsam quia amet. Et consequatur incidunt fuga dolores harum. Voluptate dolor quibusdam laudantium esse.', '2', '2', 0, '2018-06-05 01:52:11', '2019-05-27 18:21:06'),
(4, 'Aut incidunt nisi qui qui voluptates.', 'Consectetur libero quis voluptatibus eum error qui. Vel eaque placeat rem sit porro. Eaque ducimus dignissimos qui vel nobis officiis fugit. Fuga dolorem molestiae blanditiis aut doloremque ut dolores.', '3', '3', 0, '2017-06-13 10:41:36', '2019-05-27 18:21:06'),
(5, 'Amet et est ratione et est.', 'Incidunt aut officiis aliquid consequuntur. Dolor distinctio rerum ratione id. Cupiditate suscipit sed dolor et quos eligendi fuga sit. Sit veritatis consequatur vitae aut. Fuga harum sit ab quia.', '3', '4', 0, '2017-12-22 14:10:39', '2019-05-27 18:21:06'),
(6, 'Quos quam expedita vitae distinctio sed.', 'Ut libero fugiat esse corrupti molestiae pariatur. Maiores qui ullam ullam tenetur debitis. Dolorum porro qui cupiditate odit.', '1', '1', 1, '2018-01-29 18:03:55', '2019-05-27 18:21:06'),
(7, 'Et rem saepe est quia.', 'Ratione quod aliquam consequatur autem sequi dolorem. Impedit culpa rerum et dolorem. Iusto voluptas ut fugit fugit vero beatae. Id est quis harum occaecati fugit sapiente voluptatum.', '1', '1', 1, '2017-07-08 12:37:19', '2019-05-27 18:21:06'),
(8, 'Aut dolore id doloremque.', 'Est ipsa deleniti dolores corporis pariatur delectus fugiat. Et est expedita consequatur. Temporibus voluptatem aliquam aut blanditiis sit non consequatur. Qui dolorum cupiditate culpa ut ut esse magni.', '2', '3', 1, '2017-08-24 18:51:14', '2019-05-27 18:21:06'),
(9, 'Eum est dolor voluptas ut sed ab.', 'Et numquam consequatur aliquam ea. Natus distinctio nihil dolores. Totam tempora facilis est qui optio. Unde consequatur minima ullam fuga.', '2', '1', 1, '2017-12-25 04:13:41', '2019-05-27 18:21:07'),
(10, 'Molestiae sit enim quia veritatis eligendi optio.', 'Nesciunt deserunt cupiditate quia aut et iusto occaecati. Voluptas dolor est optio ex totam quia exercitationem molestiae. Repellendus dicta consequatur quibusdam consequatur at officia libero molestiae.', '3', '3', 1, '2019-02-13 09:37:40', '2019-05-27 18:21:07'),
(11, 'Suscipit natus dolorem quibusdam ipsa omnis voluptatem magni id.', 'Ea quod sint incidunt aut. Voluptatem commodi culpa est illo eius. Laborum ut dolore soluta ipsum expedita. Minus itaque qui voluptates est quasi suscipit.', '3', '1', 1, '2018-08-30 22:12:52', '2019-05-27 18:21:07'),
(12, 'Facere architecto cum non amet ipsum.', 'Placeat est voluptas molestiae ullam quasi excepturi eaque. Eveniet deleniti modi molestiae quia eos saepe voluptatem.', '3', '3', 0, '2018-02-15 07:31:30', '2019-05-27 18:21:07'),
(13, 'Rerum quaerat dicta molestias sed.', 'Perferendis alias omnis consequuntur officia temporibus. Itaque eius veritatis illo magni dolores provident. Ea molestiae minima dolores est beatae. Inventore debitis quos eos quod voluptatum commodi quia. Dolorem cupiditate at id asperiores natus.', '3', '2', 0, '2018-09-26 12:02:37', '2019-05-27 18:21:07'),
(14, 'Autem nisi nihil ut repudiandae consectetur alias nostrum.', 'Quibusdam culpa sint ipsum culpa quia. Provident doloribus nihil non quia. Ea nisi quasi nisi ullam voluptatem. Nulla quia recusandae et dolor id totam. Voluptate ea quam exercitationem ut sit.', '2', '4', 0, '2018-09-15 13:21:47', '2019-05-27 18:21:07'),
(15, 'Suscipit totam cumque unde ad sint et.', 'Ullam eveniet est expedita provident delectus error quam et. Eaque aut voluptatum vero rerum. Est exercitationem laborum neque asperiores totam deserunt sint. Aliquid qui cum enim deleniti veritatis cupiditate.', '2', '4', 0, '2017-12-23 16:07:47', '2019-05-27 18:21:07'),
(16, 'Enim reiciendis similique optio debitis non nesciunt.', 'Voluptas dolore porro unde deleniti. Debitis itaque quae placeat labore libero. Aut voluptatem in reprehenderit rem ut. Est corporis consequuntur enim similique.', '2', '2', 1, '2019-05-08 08:51:06', '2019-05-27 18:21:07'),
(17, 'Reiciendis deserunt voluptas et itaque qui odit et.', 'Animi ea unde quod et. Similique quos non tempore quis. Laborum nobis ipsum ut autem voluptatibus quis eum.', '3', '2', 1, '2018-09-08 08:13:44', '2019-05-27 18:21:07'),
(18, 'Voluptates expedita esse ut architecto veritatis eum qui.', 'Quia eligendi sint eum beatae incidunt temporibus. Aliquam necessitatibus harum voluptatum quibusdam quis molestiae. Porro dolorem distinctio ab laudantium et fugiat. Rem perspiciatis dolorem aut accusantium deleniti saepe eveniet. Culpa voluptates non nam cumque voluptas natus saepe.', '3', '2', 1, '2018-09-28 04:36:58', '2019-05-27 18:21:07'),
(19, 'Enim vitae assumenda commodi consequatur repellat aut voluptatum incidunt.', 'Ut dolorum laborum nulla voluptatem provident autem. Molestiae assumenda vel temporibus dolore. Et possimus officiis quam earum quis suscipit. Eius ratione ratione reiciendis in.', '2', '1', 1, '2018-06-30 02:41:13', '2019-05-27 18:21:07'),
(20, 'Nihil dolore eum sed exercitationem facilis magni.', 'Odio ut nihil veritatis rerum velit nisi. Aut aperiam laborum aut architecto fuga dolores officia. Accusamus quis numquam id et repudiandae eos. Natus sed officiis magnam sed illo et.', '3', '3', 1, '2018-09-21 12:19:22', '2019-05-27 18:21:07'),
(21, 'Eum qui magnam amet consequatur porro qui illo suscipit.', 'Adipisci veniam molestiae sit quasi. Et perspiciatis doloribus distinctio dolore. Illo veniam et sit tempore quo cumque praesentium. Blanditiis consectetur eligendi odio ut accusantium aut praesentium.', '1', '2', 0, '2017-06-22 06:15:54', '2019-05-27 18:21:07'),
(22, 'Ea voluptas atque a sed et iste.', 'Ex aut aut quam. Error modi incidunt voluptas sapiente harum. Culpa officia natus aliquid velit provident adipisci. Dolorem consequatur sint nostrum minus voluptatem quisquam et.', '1', '3', 1, '2017-10-22 07:33:56', '2019-05-27 18:21:07'),
(23, 'Ab quis non omnis tempore deserunt consequuntur.', 'Atque provident excepturi labore. Nobis impedit et doloremque. Possimus at et iure nesciunt voluptatibus.', '2', '3', 1, '2018-05-14 07:06:54', '2019-05-27 18:21:07'),
(24, 'Nobis officia facilis in delectus.', 'Nihil incidunt molestias non quasi rerum. Sint qui voluptas ut et voluptates magni natus. Consectetur sunt voluptas cum est voluptatibus eveniet eos. Autem sed non reiciendis.', '3', '3', 1, '2017-09-23 19:06:44', '2019-05-27 18:21:07'),
(25, 'Enim optio quae sed adipisci sed ab.', 'Qui vel id eum quas. Perferendis voluptatem et rerum. Excepturi laborum libero nostrum velit nisi tenetur. Id molestiae velit laboriosam quasi vitae et vel.', '1', '2', 0, '2017-07-11 06:47:42', '2019-05-27 18:21:07'),
(26, 'Qui id ut qui enim.', 'Aliquid itaque sed aliquid sit sed deserunt possimus totam. Nesciunt aut architecto enim veritatis. Veniam id ut quaerat blanditiis eum.', '3', '4', 0, '2017-12-01 01:15:17', '2019-05-27 18:21:07'),
(27, 'Id praesentium recusandae hic iste.', 'Repellat voluptates quia laboriosam quibusdam sed distinctio. Occaecati aut est libero aperiam et. Voluptatem iusto illo veniam quae. Numquam laboriosam rem quia nobis.', '3', '1', 0, '2017-09-01 03:15:38', '2019-05-27 18:21:07'),
(28, 'Ut suscipit consequatur veritatis.', 'Aut et odio ullam quis. Pariatur qui quia voluptatem saepe maiores aspernatur vitae sequi. Et quisquam explicabo in dolores. Non esse molestiae facilis voluptate.', '1', '2', 0, '2018-11-28 15:01:17', '2019-05-27 18:21:07'),
(29, 'Qui molestiae quia rerum veniam.', 'Ut voluptas magnam optio. Quasi provident asperiores deleniti autem in numquam eum qui. Ut asperiores necessitatibus repellat tenetur facilis ea illo in. Facere labore excepturi et.', '2', '4', 1, '2018-07-04 15:06:38', '2019-05-27 18:21:07'),
(30, 'Eum nam maxime occaecati at doloribus libero quia et.', 'Non officiis ab et nihil sunt. Ratione dolores quia corrupti qui et tenetur. Minima qui et minus earum est et nihil quae. Aut qui fugiat totam numquam.', '3', '3', 0, '2018-12-10 06:19:00', '2019-05-27 18:21:07'),
(31, 'Est voluptates qui minus impedit et.', 'Deleniti exercitationem voluptas est quis possimus sunt consequatur recusandae. Ipsa aut suscipit ipsum ratione. Voluptas aliquam amet quo at et odit facilis et. Quia et ut aspernatur voluptatem corporis qui. Sint culpa voluptatem rerum.', '1', '2', 0, '2017-06-30 19:19:59', '2019-05-27 18:21:07'),
(32, 'Cum sed magnam eos velit sed unde molestiae.', 'Quae harum qui cupiditate aperiam velit. Laboriosam nemo modi et et repellat corrupti.', '1', '3', 0, '2019-03-30 12:35:27', '2019-05-27 18:21:07'),
(33, 'Autem velit dolore a error sequi exercitationem perferendis.', 'Soluta natus perspiciatis totam eos. Ut asperiores delectus corporis quasi iste fugit et. Perferendis est ducimus qui et aut excepturi eveniet. Delectus aut voluptatem nam voluptatum facere ratione fuga.', '3', '2', 1, '2017-08-22 01:51:49', '2019-05-27 18:21:08'),
(34, 'Id alias et dignissimos quia ea.', 'Delectus explicabo et quibusdam doloremque saepe. Rerum accusamus dolorem quos voluptas maiores laudantium voluptatibus. Aut qui nostrum soluta consequuntur aliquam officiis quo dicta. Excepturi adipisci similique itaque et nulla magnam. Tenetur ipsum omnis corrupti dignissimos.', '3', '1', 1, '2017-09-04 14:34:23', '2019-05-27 18:21:08'),
(35, 'Aliquam quae doloribus harum quia sequi.', 'Temporibus voluptas dignissimos dolores cum voluptatem provident perferendis natus. Explicabo sit omnis eos aliquam et unde. Quia beatae fuga consequatur.', '1', '2', 0, '2017-09-15 01:44:22', '2019-05-27 18:21:08'),
(36, 'Praesentium quas quibusdam dignissimos consequatur itaque quae sit.', 'Et vitae recusandae ea dolore recusandae consequuntur optio. Accusamus eius exercitationem qui illo dolor. Molestiae commodi dolorum non eum aut et.', '1', '3', 0, '2018-01-11 22:39:26', '2019-05-27 18:21:08'),
(37, 'Amet eos nesciunt temporibus iste quia.', 'Voluptatem ab beatae sed nesciunt voluptatem nemo et. Omnis velit rerum eligendi nisi odio. Repudiandae ut nesciunt nam et est molestiae ab eligendi. Omnis iste doloremque tempora voluptas ducimus eligendi.', '1', '4', 0, '2019-05-21 23:03:28', '2019-05-27 18:21:08'),
(38, 'Consequatur dolor magnam voluptas pariatur et sed.', 'Et ad est omnis aut sequi inventore. Quo aperiam dolore officiis nihil cumque reiciendis doloremque. Consequatur sed et sunt. Ut dolore recusandae ducimus.', '2', '4', 1, '2018-04-10 08:38:11', '2019-05-27 18:21:08'),
(39, 'Dignissimos doloribus blanditiis cumque ducimus voluptate quia.', 'Ad eos iste aut. Rerum saepe reprehenderit nostrum quo laboriosam maiores aut. Sunt aut expedita officiis. Reiciendis autem est nam dolore aliquam iste. Pariatur voluptatem error autem ea consectetur consequuntur beatae ut.', '1', '3', 1, '2017-08-17 18:01:58', '2019-05-27 18:21:08'),
(40, 'Ex culpa minus qui laboriosam corrupti quaerat.', 'Doloremque quis velit qui natus perferendis. Porro mollitia voluptas labore voluptatem suscipit autem illo. Sit eius architecto dolorem magni aliquid. Sapiente nihil et earum est sunt aut. Vel odio natus omnis quibusdam recusandae.', '1', '2', 0, '2018-02-13 21:41:45', '2019-05-27 18:21:08'),
(41, 'Et magni sunt ut.', 'Voluptas debitis quibusdam quos odit. Rerum et autem distinctio ea est. Aut est recusandae vel vero est recusandae.', '2', '1', 0, '2018-10-04 00:39:12', '2019-05-27 18:21:08'),
(42, 'Animi reprehenderit culpa impedit qui.', 'Doloremque occaecati occaecati voluptatem aut neque aliquam ut. Facilis molestiae corporis quo aut ad placeat sit. Velit distinctio aut neque modi ut sed.', '3', '1', 1, '2018-11-29 17:49:37', '2019-05-27 18:21:08'),
(43, 'Odit et iste eum sint quia.', 'Ut qui ea et enim qui. Possimus commodi error minima ducimus nobis impedit dignissimos. Vitae laboriosam aut inventore ab eos nulla aut. Magnam id officia esse totam numquam ab molestias et. Ullam optio eum cumque repudiandae aut.', '2', '1', 0, '2019-04-09 18:47:51', '2019-05-27 18:21:08'),
(44, 'Maxime voluptate non incidunt rerum ut impedit dolores similique.', 'Nulla voluptatibus quisquam sit velit et. Iste voluptatem reiciendis minima quos. Labore occaecati dolore consequuntur reiciendis qui. Et quidem non delectus neque harum tempora. Exercitationem minima labore ipsam sed.', '1', '4', 1, '2017-09-23 04:47:44', '2019-05-27 18:21:08'),
(45, 'Corrupti aspernatur eos dolorem rerum est.', 'Voluptatibus ut reprehenderit quae et delectus. Accusantium eum officia reiciendis et. Earum sunt et occaecati numquam. Autem illum est adipisci eius eius non.', '1', '2', 1, '2017-09-25 12:53:21', '2019-05-27 18:21:10'),
(46, 'Incidunt optio eos nihil veritatis.', 'Odit delectus cupiditate libero et. Optio sunt sint et qui. Hic deleniti repellat cupiditate voluptatibus sit aperiam quos necessitatibus. Ea excepturi rerum recusandae ut eaque.', '3', '2', 0, '2017-11-16 09:36:46', '2019-05-27 19:30:37'),
(47, 'Vazamento de credenciais de email corporativo', 'O endereço de email corporativo de um funcionário da empresa possui credenciais vazadas. Uma consulta feita no site Have I Been Pwned (https://haveibeenpwned.com/) permite detectar isso. A alteração da senha deste email deve ser realizada como medida de segurança preventiva.', '1', '2', 1, '2019-05-27 18:21:11', '2019-05-27 18:21:11'),
(48, 'Uso inadequado de email corporativo', 'Detectado violação de políticas de segurança da informação da empresa por parte de um funcionário que utiliza o email corporativo para realizar compras pessoais em sites da Internet. O usuário, de forma não intencional, pode deixar a rede de informações da empresa vulnerável ao acessar sites indevidos ou fazer downloads de origem duvidosa, uma vez que esses conteúdos podem conter agentes maliciosos.', '1', '4', 0, '2019-05-27 18:21:11', '2019-05-27 18:21:11'),
(49, 'Ataque de força bruta para acesso ao sistema', 'Foi verificado no arquivo de log uma tentativa de acesso ao sistema utilizando nomes de usuários comuns (admin, guest, root, test, etc.) em ataques de força bruta. Muitas tentativas de ataque ao usuário root. Dicionários sendo utilizados com senhas fracas. O IP do invasor foi identificado e necessita ser bloqueado.', '2', '1', 1, '2019-05-27 18:21:11', '2019-05-27 18:21:11'),
(50, 'Ataque com uso de botnets', 'Detectado grandes volumes de dados desconhecidos chegando em sequência de uma rede de computadores zumbis (botnets). Tal ocorrência ameaça derrubar o servidor da empresa deixando-o fora do ar. São necessárias medidas urgentes da equipe de segurança da informação desta empresa no sentido de neutralizar o ataque ou de mitigar suas possíveis consequências.', '3', '3', 0, '2019-05-27 18:21:11', '2019-05-27 18:21:11');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_25_002415_create_incidents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
