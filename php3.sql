-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2021 lúc 10:37 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `author`, `title`, `image`, `preview`, `content`, `created_at`, `updated_at`, `slug`, `views`) VALUES
(4, 'admin', 'Review Màn Hình LCD 24” Samsung LC24F390FHEXXV LED', 'Blog-1638867493rv.jpg', '<p>Ki&ecirc;̣t tác ngh&ecirc;̣ thu&acirc;̣t</p>', '<p>Khả năng hiển thị chất lượng&nbsp;<strong>h&igrave;nh ảnh</strong>&nbsp;r&otilde; n&eacute;t, ch&acirc;n thực của&nbsp;<strong>Samsung 24</strong>&rdquo;&nbsp;<strong>LC24F390FHEXXV</strong>&nbsp;được người d&ugrave;ng đ&aacute;nh gi&aacute; cao. Với độ mỏng kh&ocirc;ng tưởng, độ cong ho&agrave;n hảo, tỷ lệ tương phản 3000:1 c&ugrave;ng c&ocirc;ng nghệ tấm nền nổi tiếng VA, sản phẩm cho m&agrave;u sắc được hiển thị sống động v&agrave; ch&acirc;n thực</p>', '2021-11-12 06:46:57', '2021-12-07 08:58:54', 'review-man-hinh-lcd-24-samsung-lc24f390fhexxv-led', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(9, 'ASUS', 0, 'asus', 1, '2021-11-16 02:35:36', '2021-12-07 08:37:33'),
(10, 'SAMSUNG', 0, 'samsung', 1, '2021-11-16 02:35:45', '2021-12-07 08:38:05'),
(15, '20\"', 9, '20', 0, '2021-12-07 08:54:27', '2021-12-07 08:54:27'),
(16, '24\"', 10, '24', 0, '2021-12-07 08:54:35', '2021-12-07 08:54:35'),
(17, '27\"', 10, '27', 0, '2021-12-07 08:54:44', '2021-12-07 08:54:44'),
(18, '32\"', 10, '32', 0, '2021-12-07 08:54:48', '2021-12-07 08:54:48'),
(19, '24\"', 9, '24', 0, '2021-12-07 08:55:26', '2021-12-07 08:55:26'),
(20, '27\"', 9, '27', 0, '2021-12-07 08:55:34', '2021-12-07 08:55:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_blog` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_product` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `address`, `phone`, `subject`, `messages`, `created_at`, `updated_at`) VALUES
(11, 'Tran Quoc Lam', '273', '0909009009', 'abc', 'xyz', '2021-12-06 20:07:31', '2021-12-06 20:07:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(61, '1638866676-as20.jpg', 22, '2021-12-07 08:44:36', '2021-12-07 08:44:36'),
(62, '1638866676-as20-2.jpg', 22, '2021-12-07 08:44:36', '2021-12-07 08:44:36'),
(63, '1638866748-as24-1.jpg', 23, '2021-12-07 08:45:48', '2021-12-07 08:45:48'),
(64, '1638866748-as24-2.jpg', 23, '2021-12-07 08:45:48', '2021-12-07 08:45:48'),
(65, '1638866804-as27-1.jpg', 24, '2021-12-07 08:46:44', '2021-12-07 08:46:44'),
(66, '1638866804-as27-2.jpg', 24, '2021-12-07 08:46:44', '2021-12-07 08:46:44'),
(67, '1638867078-ss32-1.jpg', 25, '2021-12-07 08:51:18', '2021-12-07 08:51:18'),
(68, '1638867078-ss32-2.jpg', 25, '2021-12-07 08:51:18', '2021-12-07 08:51:18'),
(69, '1638867135-ss27-1.jpg', 26, '2021-12-07 08:52:15', '2021-12-07 08:52:15'),
(70, '1638867135-ss27-2.jpg', 26, '2021-12-07 08:52:15', '2021-12-07 08:52:15'),
(71, '1638867201-ss24-1.jpg', 27, '2021-12-07 08:53:21', '2021-12-07 08:53:21'),
(72, '1638867201-ss24-2.jpg', 27, '2021-12-07 08:53:21', '2021-12-07 08:53:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_04_013722_create_categories_table', 1),
(8, '2021_11_04_074311_create_products_table', 2),
(9, '2021_11_04_074801_create_images_table', 2),
(10, '2021_11_05_013631_create_contacts_table', 3),
(12, '2021_11_05_015300_add_is__admin_to_users_table', 4),
(13, '2021_11_10_024251_add_column_code_and_time_code_in_table_users', 5),
(14, '2021_11_10_154913_create_orders_table', 6),
(15, '2021_11_11_133108_create_order_details_table', 7),
(16, '2021_11_11_144500_add_column_status_to_table_orders', 8),
(18, '2021_11_12_100203_create_blogs_table', 9),
(19, '2021_11_12_135339_add_colunm_slug_to_table_blogs', 10),
(20, '2021_11_12_142607_create_comments_table', 11),
(21, '2021_11_15_133342_add_colunm_google_id_to_users', 12),
(22, '2021_11_15_144154_add_colunm_id_product_to_comments', 13),
(23, '2021_11_17_133310_add_colunm_view_to_products', 14),
(24, '2021_11_17_134833_add_colunm_views_to_blogs', 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `id_user`, `created_at`, `updated_at`, `status`) VALUES
(28, 'lâm', 'yjngji12@gmail.com', '0909009009', '273', 20, '2021-12-07 09:10:51', '2021-12-07 09:11:11', 1),
(29, 'lam', 'lamtqps14394@fpt.edu.vn', '0902741932', '273/50 Lạc Long Quân', 19, '2021-12-07 09:34:44', '2021-12-07 09:35:19', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `id_order`, `id_product`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(27, 28, 27, 4190000, 4, '2021-12-07 09:10:51', '2021-12-07 09:10:51'),
(28, 29, 27, 4190000, 2, '2021-12-07 09:34:44', '2021-12-07 09:34:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `price`, `price_sale`, `img`, `category_id`, `slug`, `created_at`, `updated_at`, `views`) VALUES
(22, 'Màn hình LCD 20” Asus VS207DF LED', '<ul>\r\n	<li>K&iacute;ch thước m&agrave;n h&igrave;nh: 19.5&Prime;</li>\r\n	<li>Độ ph&acirc;n giải: 1366&times;768; tỷ lệ 16:9</li>\r\n	<li>Độ s&aacute;ng (Max): 200 cd;</li>\r\n	<li>Tỉ lệ tương phản (Max):80.000.000: 1(ASCR)</li>\r\n	<li>G&oacute;c nh&igrave;n: 90 &deg; (H) / 65 &deg; (V)</li>\r\n	<li>Hiển thị M&agrave;u sắc: 16.7M;</li>\r\n	<li>Thời gian đ&aacute;p ứng: 5 ms</li>\r\n	<li>C&ocirc;ng nghệ: Splendid Video Intelligence, Colour Shine</li>\r\n	<li>Kết nối: D-Sub (VGA)</li>\r\n</ul>', '<h2><strong>Giới thiệu Asus 20&Prime; VS207DF LED Monitor</strong></h2>\r\n\r\n<h3><strong>Thời gian đ&aacute;p ứng 5ms</strong></h3>\r\n\r\n<p>M&agrave;n H&igrave;nh Asus VS207DF 20inch&nbsp;với thời gian đ&aacute;p ứng nhanh nhất 5ms, kết hợp tỷ lệ m&agrave;n h&igrave;nh 16:9 m&agrave;n h&igrave;nh sẽ hạn chế hiện tượng b&oacute;ng mờ gi&uacute;p cho việc hiển thị c&aacute;c thước phim, game h&agrave;nh động khi hiển thị được mượt m&agrave;, sắc n&eacute;t hơn.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ flicker-free</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ flicker-free c&oacute; chức năng giảm hiện tượng rung cho h&igrave;nh ảnh hiển thị, từ đ&oacute; tạo sự thoải m&aacute;i v&agrave; giảm thiểu c&aacute;c trường hợp mỏi mắt, đau mắt khi sử dụng trong thời gian d&agrave;i.</p>\r\n\r\n<h3><strong>Chức năng kiểm so&aacute;t Aspect</strong></h3>\r\n\r\n<p>M&agrave;n H&igrave;nh Asus VS207DF 19.5 Inch được hỗ trợ chức năng kiểm so&aacute;t Aspect cho ph&eacute;p người d&ugrave;ng lựa chọn một chế độ hiển thị ưa th&iacute;ch giữa Full v&agrave; 4: 3 cho ph&ugrave; hợp với nhu cầu sử dụng khi thiết kế đồ họa, chỉnh sửa h&igrave;nh ảnh hay giải tr&iacute; với xem phim, chơi game</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ SplendidPlus</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh SplendidPlus c&oacute; chức năng tối ưu h&oacute;a hiệu suất video v&agrave; độ trung thực h&igrave;nh ảnh bằng c&aacute;ch tăng cường m&agrave;u sắc, độ s&aacute;ng, độ tương phản, v&agrave; độ sắc n&eacute;t. 8 chế độ hiệu chỉnh như Reading, Darkroom, Phong cảnh, h&aacute;t, Chơi game, Night View, sRGB v&agrave; Ti&ecirc;u chuẩn c&oacute; thể được lựa chọn th&ocirc;ng qua một ph&iacute;m bấm dễ d&agrave;ng.</p>\r\n\r\n<h3><strong>Cổng kết nối tiện &iacute;ch</strong></h3>\r\n\r\n<p>M&agrave;n H&igrave;nh Asus VS207DF được c&agrave;i đặt sẵn với c&aacute;c cổng như D-Sub, Cable VGA, sẽ hỗ trợ bạn thuận tiện v&agrave; dễ d&agrave;ng hơn khi kết nối với c&aacute;c thiết bị điện tử kh&aacute;c, nhằm đ&aacute;p ứng tối đa nhu cầu sử dụng của bạn.</p>', 3790000, 2790000, '1638866650-as20.jpg', 9, 'man-hinh-lcd-20-asus-vs207df-led', '2021-12-07 08:44:10', '2021-12-07 08:47:13', 0),
(23, 'Màn hình LCD 24” Asus VL249HE FHD IPS 75Hz Freesync', '<ul>\r\n	<li>M&agrave;n h&igrave;nh bảo vệ mắt VL249HE &ndash; 23,8 inch, IPS, 75Hz, Adaptive-Sync/FreeSync&trade;, Kh&ocirc;ng viền, Mỏng, Low Blue Light (Bộ lọc &aacute;nh s&aacute;ng xanh dương), Flicker Free (Khử nhấp nh&aacute;y), Treo tường</li>\r\n	<li>M&agrave;n h&igrave;nh 23,8 inch Full HD với c&ocirc;ng nghệ IPS cho g&oacute;c xem rộng l&ecirc;n tới 178&deg;</li>\r\n	<li>Với tốc độ l&agrave;m mới l&ecirc;n tới 75Hz c&ugrave;ng c&ocirc;ng nghệ Adaptive-Sync/FreeSync&trade; để loại bỏ hiện tượng x&eacute; h&igrave;nh v&agrave; gi&aacute;n đoạn tốc độ khung h&igrave;nh, gi&uacute;p chơi game nhanh v&agrave; mượt hơn</li>\r\n	<li>C&ocirc;ng nghệ GamePlus độc quyền của ASUS với t&acirc;m ngắm, bộ hẹn giờ, bộ đếm FPS, chức năng căn chỉnh m&agrave;n h&igrave;nh</li>\r\n	<li>Chứng nhận của T&Uuml;V Rheinland cho c&ocirc;ng nghệ Flicker-free (Chống nhấp nh&aacute;y) v&agrave; Low Blue Light (&Aacute;nh s&aacute;ng xanh dương thấp) để đảm bảo trải nghiệm xem thoải m&aacute;i</li>\r\n	<li>Thiết kế mỏng v&agrave; kh&ocirc;ng viền với thiết kế gắn tường chuẩn VESA để tiết kiệm khoảng trống b&agrave;n l&agrave;m việc</li>\r\n</ul>', '<h2><strong>Giới thiệu Asus 24&Prime; VL249HE FHD IPS 75Hz Freesync</strong></h2>\r\n\r\n<h3><strong>Thiết kế mỏng, kh&ocirc;ng viền, tao nh&atilde;</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh bảo vệ mắt ASUS&nbsp;VL249HE&nbsp;c&oacute; k&iacute;ch thước 23,8 inch với thiết kế mỏng v&agrave; kh&ocirc;ng viền l&agrave; sự bổ sung l&yacute; tưởng cho nhu cầu sử dụng tại gia đ&igrave;nh hoặc văn ph&ograve;ng l&agrave;m việc. C&ocirc;ng nghệ IPS với g&oacute;c xem cực rộng l&ecirc;n tới 178&deg;, tốc độ l&agrave;m mới l&ecirc;n tới 75Hz v&agrave; c&ocirc;ng nghệ Adaptive-Sync/FreeSync loại bỏ hiện tượng x&eacute; h&igrave;nh v&agrave; gi&aacute;n đoạn tốc độ khung h&igrave;nh, gi&uacute;p chơi game mượt m&agrave; v&agrave; liền mạch hơn. Ngo&agrave;i ra, c&ocirc;ng nghệ bảo vệ mắt của ASUS đảm bảo mang lại trải nghiệm xem thoải m&aacute;i. Ph&ugrave; hợp với bộ gi&aacute; gắn tường chuẩn VESA (100 x 100 mm) để tiết kiệm kh&ocirc;ng gian b&agrave;n l&agrave;m việc.</p>\r\n\r\n<h3><strong>Ho&agrave;n hảo cho thiết lập đa m&agrave;n h&igrave;nh&nbsp;</strong></h3>\r\n\r\n<p>ASUS&nbsp;VL249HE&nbsp;gi&uacute;p tiết kiệm kh&ocirc;ng gian nhờ kiểu d&aacute;ng mỏng, thiết kế kh&ocirc;ng viền khiến n&oacute; trở n&ecirc;n l&yacute; tưởng cho c&aacute;c cấu h&igrave;nh đa m&agrave;n h&igrave;nh gần như liền mảnh để bạn c&oacute; thể trải nghiệm xem đắm ch&igrave;m hơn. Bất kể l&agrave; bạn đang chơi game, xem phim hoặc l&agrave;m việc g&igrave; đ&oacute;, bạn c&oacute; thể xem to&agrave;n cảnh v&agrave; c&oacute; được cảm gi&aacute;c đắm ch&igrave;m hơn.</p>\r\n\r\n<h3><strong>Trải nghiệm xem</strong></h3>\r\n\r\n<p>Tầm nh&igrave;n rộng nhờ trang bị tấm nền IPS gi&uacute;p g&oacute;c xem rộng l&ecirc;n tới 178&deg;, giảm thiểu sự thay đổi sắc m&agrave;u, cho m&agrave;u sắc đồng đều v&agrave; ch&iacute;nh x&aacute;c tại bất kỳ g&oacute;c xem n&agrave;o để mang lại trải nghiệm xem tốt hơn.</p>\r\n\r\n<h3><strong>Tốc độ l&agrave;m mới 75Hz với c&ocirc;ng nghệ ASUS GamePlus</strong></h3>\r\n\r\n<p>Nhờ hỗ trợ c&ocirc;ng nghệ Adaptive Sync/FreeSync với tốc độ l&agrave;m mới l&ecirc;n tới 75Hz, giảm độ trễ hoặc hiện tượng nh&ograve;e chuyển động g&acirc;y kh&oacute; chịu,&nbsp;VL249HE&nbsp;gi&uacute;p bạn phản ứng tức th&igrave; với những g&igrave; đang diễn ra tr&ecirc;n m&agrave;n h&igrave;nh v&agrave; trải nghiệm chơi game si&ecirc;u mượt, để bạn sẽ l&agrave; người h&agrave;nh động trước ti&ecirc;n.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&ocirc;ng nghệ GamePlus độc quyền của ASUS với c&aacute;c t&iacute;nh năng Crosshair (T&acirc;m ngắm), Timer (Bộ đếm thời gian), FPS counter (Bộ đếm số khung h&igrave;nh/ gi&acirc;y) v&agrave; Display Alignment (Hiển thị căn chỉnh) mang lại cho bạn những cải tiến trong game gi&uacute;p bạn tận hưởng game của m&igrave;nh được tối đa. Tất cả c&aacute;c chức năng c&oacute; thể dễ d&agrave;ng truy cập được th&ocirc;ng qua menu hiển thị tr&ecirc;n m&agrave;n h&igrave;nh. Chức năng n&agrave;y được ph&aacute;t triển theo tư vấn từ c&aacute;c game thủ chuy&ecirc;n nghiệp, cho ph&eacute;p họ luyện tập v&agrave; n&acirc;ng cao kỹ năng chơi game.</p>\r\n\r\n<h3><strong>Bảo vệ mắt bạn với c&ocirc;ng nghệ ASUS Eye Care</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ Bộ lọc &aacute;nh s&aacute;ng xanh của ASUS được T&Uuml;V Rheinland chứng nhận chắc chắn sẽ bảo vệ bạn khỏi c&aacute;c &aacute;nh s&aacute;ng xanh c&oacute; hại, đồng thời bạn c&oacute; thể dễ d&agrave;ng truy cập bốn cấu h&igrave;nh bộ lọc kh&aacute;c nhau bằng c&aacute;ch sử dụng ph&iacute;m n&oacute;ng. M&agrave;n h&igrave;nh VL249 đ&atilde; vượt qua những cuộc thử nghiệm hiệu năng nghi&ecirc;m ngặt v&agrave; được chứng nhận l&agrave; kh&ocirc;ng bị nhấp nh&aacute;y nh&aacute;y v&agrave; ph&aacute;t ra mức &aacute;nh s&aacute;ng m&agrave;u xanh thấp bởi c&aacute;c ph&ograve;ng th&iacute; nghiệm của T&Uuml;V Rheinland &ndash; nh&agrave; cung cấp dịch vụ kỹ thuật, an to&agrave;n v&agrave; chứng nhận to&agrave;n cầu.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ Kh&ocirc;ng chập chờn</strong></h3>\r\n\r\n<p>Đ&atilde; đến l&uacute;c ch&agrave;o tạm biệt đ&ocirc;i mắt mệt mỏi v&agrave; căng thẳng. M&agrave;n h&igrave;nh VL249 được trang bị c&ocirc;ng nghệ Flicker-free (chống nhấp nh&aacute;y) của ASUS v&agrave; đ&atilde; được T&Uuml;V Rheinland chứng nhận. C&ocirc;ng nghệ n&agrave;y được thiết kế để giảm bớt hiện tượng nhấp nh&aacute;y nh&aacute;y của m&agrave;n h&igrave;nh nhằm mang lại trải nghiệm xem thoải m&aacute;i. C&ocirc;ng nghệ n&agrave;y gi&uacute;p giảm thiểu c&aacute;c trường hợp mỏi mắt v&agrave; c&aacute;c căn bệnh nguy hiểm kh&aacute;c, đặc biệt l&agrave; khi bạn d&agrave;nh qu&aacute; nhiều thời gian sử dụng m&agrave;n h&igrave;nh để xem c&aacute;c video ưa th&iacute;ch.</p>', 4300000, 3640000, '1638866748-as24-1.jpg', 9, 'man-hinh-lcd-24-asus-vl249he-fhd-ips-75hz-freesync', '2021-12-07 08:45:48', '2021-12-07 08:45:48', 0),
(24, 'Màn hình LCD 27” Asus VG278Q FHD TN 144Hz 1ms G-Sync/Freesync', '<ul>\r\n	<li>K&iacute;ch thước m&agrave;n h&igrave;nh: 27 inch</li>\r\n	<li>Độ ph&acirc;n giải: Full HD (1920 x 1080)</li>\r\n	<li>Tỷ lệ m&agrave;n h&igrave;nh: 16:9</li>\r\n	<li>C&ocirc;ng nghệ tấm nền: TN</li>\r\n	<li>Thời gian phản hồi: 1ms</li>\r\n	<li>Tần số qu&eacute;t: 144Hz</li>\r\n	<li>Hỗ trợ c&ocirc;ng nghệ FreeSync / G-Sync</li>\r\n	<li>Cổng kết nối: HDMI(v1.4), DisplayPort 1.2, DVI-D, 3.5mm Mini-Jack</li>\r\n</ul>', '<h2><strong>Giới thiệu Asus VG278Q 27&Prime; FHD TN 144Hz 1ms G-Sync Freesync Gaming</strong></h2>\r\n\r\n<h3><strong>Thiết kế c&ocirc;ng th&aacute;i học v&agrave; c&oacute; thể treo tường</strong></h3>\r\n\r\n<p>M&agrave;n H&igrave;nh Gaming Asus VG278Q&nbsp;Thiết kế đi d&acirc;y c&aacute;p th&ocirc;ng minh tr&ecirc;n ch&acirc;n đế của VG278Q gi&uacute;p bạn sắp xếp v&agrave; giấu c&aacute;p để kh&ocirc;ng gian chơi game lu&ocirc;n ngăn nắp.</p>\r\n\r\n<p>ASUS VG278Q được thiết kế đặc biệt cho c&aacute;c phi&ecirc;n chơi game k&eacute;o d&agrave;i. Ch&acirc;n đế được thiết kế c&ocirc;ng th&aacute;i học cho ph&eacute;p bạn điều chỉnh g&oacute;c nghi&ecirc;ng, lật xoay v&agrave; độ cao của m&agrave;n h&igrave;nh để lu&ocirc;n c&oacute; vị tr&iacute; xem l&yacute; tưởng. M&agrave;n h&igrave;nh c&ograve;n c&oacute; thể được treo tường bằng gi&aacute; VESA để ph&ugrave; hợp với mọi kh&ocirc;ng gian giới hạn.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 27 inch Full HD</strong></h3>\r\n\r\n<p>Được trang bị m&agrave;n h&igrave;nh 27 inch với độ ph&acirc;n giải Full HD (1920 x 1080) sẽ khiến bạn ho&agrave;n to&agrave;n ch&igrave;m đắm trong c&aacute;c pha h&agrave;nh động. C&aacute;c t&iacute;nh năng v&agrave; thiết kế ti&ecirc;n tiến khiến m&agrave;n h&igrave;nh trở th&agrave;nh đồng minh ho&agrave;n hảo cho bất kỳ cuộc phi&ecirc;u lưu n&agrave;o trong game.</p>\r\n\r\n<h3><strong>Thời gian phản hồi 1ms</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh nhanh nhất trong ph&acirc;n kh&uacute;c, tự h&agrave;o với thời gian phản hồi 1ms loại bỏ ho&agrave;n to&agrave;n hiện tượng mờ v&agrave; nh&ograve;e ảnh khi chuyển động. Nhờ đ&oacute; cho ph&eacute;p bạn phản ứng ngay tức th&igrave; với mọi sự kiện diễn ra tr&ecirc;n m&agrave;n h&igrave;nh, đặc biệt l&agrave; trong c&aacute;c tựa game c&oacute; nhịp độ cao &ndash; bạn c&oacute; thể đổ cua như một tay đua chuy&ecirc;n nghiệp hay thực hiện một pha headshot như một tay s&uacute;ng l&atilde;o luyện.</p>\r\n\r\n<h3><strong>Tần số l&agrave;m mới 144Hz đ&aacute;ng kinh ngạc</strong></h3>\r\n\r\n<p>Với tần số l&agrave;m mới 144Hz đ&aacute;ng kinh ngạc, c&aacute;c h&igrave;nh ảnh chuyển động nhanh đều kh&ocirc;ng th&agrave;nh vấn đề với VG278Q. Kh&ocirc;ng phải bực bội v&igrave; giật lag để lu&ocirc;n chiếm ưu thế trong c&aacute;c tựa game bắn s&uacute;ng g&oacute;c nh&igrave;n thứ nhất, đua xe, chiến thuật thời gian thực v&agrave; c&aacute;c game thể thao.</p>\r\n\r\n<h3><strong>ASUS Extreme Low Motion Blur (ELMB) gi&uacute;p c&aacute;c vật thể chuyển động r&otilde; n&eacute;t</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; c&ograve;n c&oacute; ASUS Extreme Low Motion Blur (ELMB) gi&uacute;p c&aacute;c vật thể chuyển động r&otilde; n&eacute;t hơn để m&agrave;n chơi của bạn c&agrave;ng liền mạch v&agrave; nhạy hơn.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ Adaptive-Sync cho trải nghiệm chơi game mượt m&agrave;</strong></h3>\r\n\r\n<p>Trang bị c&ocirc;ng nghệ Adaptive-Sync (FreeSync) loại bỏ hiện tượng r&aacute;ch h&igrave;nh v&agrave; khung h&igrave;nh đứt đoạn, đem đến cho bạn h&igrave;nh ảnh liền mạch v&agrave; m&agrave;n chơi mượt m&agrave;.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ GameFast Input</strong></h3>\r\n\r\n<p>Màn hình trang bị C&ocirc;ng nghệ GameFast Input để giảm thiểu lag đầu v&agrave;o hơn nữa. C&ocirc;ng nghệ n&agrave;y mang đến khả năng hiển thị chuyển động nhanh hơn nhiều để bạn lu&ocirc;n phản ứng nhanh nhẹn với h&agrave;nh động trong game tại thời điểm ch&iacute;nh x&aacute;c.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ loại bỏ chập chờn</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ Khử nhấp nh&aacute;y giảm thiểu nhấp nh&aacute;y để cho bạn trải nghiệm chơi game thoải m&aacute;i hơn. Việc n&agrave;y gi&uacute;p giảm thiểu nguy cơ mỏi mắt v&agrave; c&aacute;c t&aacute;c hại kh&aacute;c cho mắt khi bạn đắm m&igrave;nh trong những phi&ecirc;n chơi game d&agrave;i, kịch t&iacute;nh.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ &aacute;nh s&aacute;ng xanh dương si&ecirc;u thấp</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ ánh s&aacute;ng xanh dương si&ecirc;u thấp của ASUS giảm thiểu lượng &aacute;nh s&aacute;ng xanh dương. Bạn c&oacute; thể v&agrave;o v&agrave; chọn bốn c&agrave;i đặt bộ lọc kh&aacute;c nhau tr&ecirc;n m&agrave;n h&igrave;nh một c&aacute;ch dễ d&agrave;ng th&ocirc;ng qua menu OSD hay qua giao diện DisplayWidget để c&oacute; được t&ugrave;y chọn ph&ugrave; hợp nhất với t&aacute;c vụ.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ GamePlus độc quyền của ASUS</strong></h3>\r\n\r\n<p>Hỗ trợ ph&iacute;m n&oacute;ng GamePlus độc quyền của ASUS mang đến những trải nghiệm tăng cường gi&uacute;p bạn l&agrave;m được nhiều điều hơn trong game. Chức năng n&agrave;y đ&atilde; được đồng ph&aacute;t triển với những đ&oacute;ng g&oacute;p của c&aacute;c game thủ chuy&ecirc;n nghiệp, cho ph&eacute;p họ luyện tập v&agrave; n&acirc;ng cao kỹ năng chơi game của m&igrave;nh.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ GameVisual độc quyền của ASUS</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ ASUS GameVisual cung cấp bảy chế độ hiển thị thiết lập sẵn để tối ưu h&oacute;a h&igrave;nh hảnh cho nhiều loại nội dung kh&aacute;c nhau. C&oacute; thể dễ d&agrave;ng sử dụng t&iacute;nh năng độc đ&aacute;o n&agrave;y bằng một ph&iacute;m n&oacute;ng hoặc từ menu c&agrave;i đặt Hiển thị Tr&ecirc;n M&agrave;n h&igrave;nh (OSD).</p>\r\n\r\n<h3><strong>Nhiều t&ugrave;y chọn kết nối</strong></h3>\r\n\r\n<p>Hỗ trợ nhiều t&ugrave;y chọn kết nối, bao gồm cổng DVI-D dual-link, DisplayPort 1.2 v&agrave; HDMI(v1.4) để bạn c&oacute; thể kết nối với nhiều thiết bị đa phương tiện đa dạng.</p>', 6000000, 5450000, '1638866804-as27-1.jpg', 9, 'man-hinh-lcd-27-asus-vg278q-fhd-tn-144hz-1ms-g-syncfreesync', '2021-12-07 08:46:44', '2021-12-07 08:46:44', 0),
(25, 'Màn hình LCD 32” Samsung LC32JG50FQEXXV FHD 144Hz Freesync', '<ul>\r\n	<li>H&atilde;ng sản xuất: Samsung</li>\r\n	<li>Model: LC32JG50FQEXXV</li>\r\n	<li>K&iacute;ch thước m&agrave;n h&igrave;nh: 32 inch</li>\r\n	<li>Độ ph&acirc;n giải: Full HD (1,920 x 1,080)</li>\r\n	<li>Tỉ lệ: 16:9</li>\r\n	<li>Tấm nền m&agrave;n h&igrave;nh: VA</li>\r\n	<li>Độ s&aacute;ng: 250 cd/m2</li>\r\n	<li>M&agrave;u sắc hiển thị: 16.7 triệu m&agrave;u</li>\r\n	<li>Độ tương phản: 3000:1</li>\r\n	<li>Tần số qu&eacute;t: 144Hz</li>\r\n	<li>Cổng kết nối: Display Port (1&times;1.2) HDMI (1.4&times;2)</li>\r\n	<li>Thời gian đ&aacute;p ứng: 4ms</li>\r\n	<li>G&oacute;c nh&igrave;n: 178&deg;/178&deg;</li>\r\n</ul>', '<h2><strong>Giới thiệu Samsung LC32JG50FQEXXV FHD 144Hz Freesync Cong</strong></h2>\r\n\r\n<h3><strong>M&agrave;n H&igrave;nh Rộng Hơn. Chiến Game Mượt Hơn.</strong></h3>\r\n\r\n<p>M&agrave;n H&igrave;nh Cong Gaming Samsung LC32JG50FQEXXV 32 inch Full HD (1920&times;1080) 4ms 144Hz VA AMD Radeon FreeSync Cong</p>\r\n\r\n<p><img alt=\"Samsung LC32JG50FQEXXV\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2020/11/SS_LC32JG50FQEXXV-6.jpg\" style=\"height:462px; width:700px\" /></p>\r\n\r\n<h3><strong>M&agrave;n H&igrave;nh Cong Cho Trải Nghiệm Đắm Ch&igrave;m</strong></h3>\r\n\r\n<p>Sở hữu những đặc điểm của m&agrave;n h&igrave;nh cong 1800R huyền thoại, m&agrave;n h&igrave;nh CJG5F &ocirc;m trọn tầm nh&igrave;n của bạn, mang đến trải nghiệm đắm ch&igrave;m trong từng trận game hấp dẫn.</p>\r\n\r\n<p><img alt=\"Samsung LC32JG50FQEXXV\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2020/11/SS_LC32JG50FQEXXV-7.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h3><strong>Tần Số Qu&eacute;t 144Hz Vượt Trội</strong></h3>\r\n\r\n<p>Tận hưởng trải nghiệm chơi game mượt m&agrave; với tần số qu&eacute;t 144Hz đỉnh cao gi&uacute;p giảm thiểu độ trễ h&igrave;nh ảnh v&agrave; hiện tượng mờ chuyển động. Dễ d&agrave;ng lựa chọn 60Hz /120Hz th&ocirc;ng qua hiển thị tr&ecirc;n m&agrave;n h&igrave;nh để nhanh ch&oacute;ng tối ưu hiệu suất m&agrave; kh&ocirc;ng cần phải truy cập menu c&agrave;i đặt hiển thị.</p>\r\n\r\n<p><img alt=\"Samsung LC32JG50FQEXXV\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2020/11/SS_LC32JG50FQEXXV-8.jpg\" style=\"height:446px; width:700px\" /></p>\r\n\r\n<h3><strong>Đa Chế Độ M&agrave;n H&igrave;nh</strong></h3>\r\n\r\n<p>Chế Độ Game nhanh ch&oacute;ng tối ưu chỉ số gamma đen, tỷ lệ tương phản v&agrave; độ sắc n&eacute;t. Đồng thời, thiết lập gi&aacute; trị m&agrave;u cho từng d&ograve;ng game v&agrave; phim điện ảnh.</p>\r\n\r\n<p><img alt=\"Samsung LC32JG50FQEXXV\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2020/11/SS_LC32JG50FQEXXV-10.jpg\" style=\"height:560px; width:700px\" /></p>\r\n\r\n<h3><strong>Giao Diện Game Vượt Trội</strong></h3>\r\n\r\n<p>Điều chỉnh tức thời c&aacute;c thiết lập quan trọng với giao diện bảng điều khiển OSD vượt trội, đoạt giải thưởng Good Design Award d&agrave;nh ri&ecirc;ng cho game thủ.</p>\r\n\r\n<p><img alt=\"Samsung LC32JG50FQEXXV\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2020/11/SS_LC32JG50FQEXXV-9.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h3><strong>Sắc Đen S&acirc;u Hơn</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ tấm nền VA từ Samsung mang đến tỷ lệ tương phản tối ưu 3000:1. Tận hưởng sắc đen th&ecirc;m s&acirc;u, sắc trắng th&ecirc;m tinh khiết v&agrave; m&agrave;u sắc sống động hơn bao giờ hết.</p>\r\n\r\n<p><img alt=\"Samsung LC32JG50FQEXXV\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2020/11/SS_LC32JG50FQEXXV-11.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h3><strong>Liền Mạch Kh&ocirc;ng Gi&aacute;n Đoạn</strong></h3>\r\n\r\n<p>Tận hưởng thế giới giải tr&iacute; sống động chưa từng thấy. C&ocirc;ng nghệ AMD Radeon FreeSync&trade; đồng bộ tốc độ dựng h&igrave;nh của thẻ đồ họa v&agrave; m&agrave;n h&igrave;nh, giảm thiểu t&igrave;nh trạng x&eacute; h&igrave;nh, lặp h&igrave;nh thường thấy. Thưởng thức mọi bộ phim y&ecirc;u th&iacute;ch v&agrave; chiến thắng mọi trận game với trải nghiệm kh&ocirc;ng gi&aacute;n đoạn, chuyển động mượt m&agrave; ấn tượng.</p>\r\n\r\n<p><img alt=\"Samsung LC32JG50FQEXXV\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2020/11/SS_LC32JG50FQEXXV-12.jpg\" style=\"height:476px; width:700px\" /></p>', 6540000, 6140000, '1638867078-ss32-1.jpg', 10, 'man-hinh-lcd-32-samsung-lc32jg50fqexxv-fhd-144hz-freesync', '2021-12-07 08:51:18', '2021-12-07 08:51:18', 0),
(26, 'Màn hình LCD 27” Samsung LS27R350FHEXXV IPS 75Hz', '<ul>\r\n	<li>Hãng sản xu&acirc;́t Samsung</li>\r\n	<li>K&iacute;ch thước 26.8 inch</li>\r\n	<li>Tỷ lệ khung h&igrave;nh 16:9</li>\r\n	<li>Tấm nền IPS</li>\r\n	<li>Độ s&aacute;ng 250cd/m2</li>\r\n	<li>Contrast Ratio 1000:1(Typical)</li>\r\n	<li>Tỷ lệ tương phản Mega</li>\r\n	<li>Độ ph&acirc;n giải 1,920 x 1,080</li>\r\n	<li>Thời gian đ&aacute;p ứng 5 (GTG）</li>\r\n</ul>', '<h2><strong>Giới thiệu LCD 27&rdquo; Samsung LS27R350FHEXXV IPS 75Hz</strong></h2>\r\n\r\n<h3><strong>Liền Mạch Kh&ocirc;ng Gi&aacute;n Đoạn</strong></h3>\r\n\r\n<p>Tận hưởng thế giới giải tr&iacute; sống động&nbsp; chưa từng thấy. C&ocirc;ng nghệ AMD Radeon FreeSync&trade; đồng bộ tốc độ dựng h&igrave;nh của thẻ đồ họa v&agrave; m&agrave;n h&igrave;nh, giảm thiểu t&igrave;nh trạng x&eacute; h&igrave;nh v&agrave; lắp h&igrave;nh thường thấy. Thưởng thức mọi bộ phim y&ecirc;u th&iacute;ch v&agrave; chiến thắng mọi trận game với trải nghiệm kh&ocirc;ng gi&aacute;n đoạn, chuyển động mượt m&agrave; hơn bao giờ hết.</p>\r\n\r\n<h3><strong>Tối Ưu Từng M&agrave;n Game</strong></h3>\r\n\r\n<p>Chế Độ Game t&ugrave;y chỉnh khung h&igrave;nh theo từng d&ograve;ng game, t&aacute;i hiện ho&agrave;n hảo dải sắc m&agrave;u rực rỡ c&ugrave;ng độ tương phản sắc n&eacute;t tối ưu.Cho bạn trải nghiệm m&agrave;n game sống động hơn v&agrave; dễ d&agrave;ng ph&aacute;t hiện kẻ địch đang ẩn nấp trong b&oacute;ng tối.</p>\r\n\r\n<h3><strong>Chuyển Động Mượt M&agrave; v&agrave; Sắc N&eacute;t</strong></h3>\r\n\r\n<p>Với tốc độ l&agrave;m mới đạt 75Hz si&ecirc;u nhanh, LS24R350 hiển thị r&otilde; n&eacute;t mọi chuyển động. Kh&ocirc;ng c&ograve;n t&igrave;nh trạng giựt h&igrave;nh hay hiệu ứng b&oacute;ng mờ, giờ đ&acirc;y bạn thỏa th&iacute;ch thưởng thức từng khung cảnh của bộ phim hay video y&ecirc;u th&iacute;ch, tận hưởng c&aacute;c trận game kịch t&iacute;nh một c&aacute;ch mượt m&agrave; v&agrave; sống động đến kh&oacute; tin.</p>\r\n\r\n<h3><strong>Thoải M&aacute;i Tập Trung</strong></h3>\r\n\r\n<p>Bảo vệ tối ưu đ&ocirc;i mắt của bạn. C&ocirc;ng nghệ ti&ecirc;n tiến tr&ecirc;n m&agrave;n h&igrave;nh LS24R350 giảm thiểu độ mỏi cho mắt, gi&uacute;p tăng cường sự thoải m&aacute;i khi bạn l&agrave;m việc trong thời gian d&agrave;i. C&ocirc;ng nghệ Chống Nhấp Nh&aacute;y gi&uacute;p loại bỏ c&aacute;c nhấp nh&aacute;y kh&oacute; chịu thường thấy khi sử dụng m&agrave;n h&igrave;nh, trong khi Chế Độ Bảo Vệ Mắt hạn chế lượng &aacute;nh s&aacute;ng xanh dễ khiến mắt mỏi mệt. Mang đến bạn trải nghiệm xem thoải m&aacute;i trong mọi điều kiện s&aacute;ng.</p>\r\n\r\n<h3><strong>Kết Nối Linh Hoạt</strong></h3>\r\n\r\n<p>Được trang bị đầy đủ c&aacute;c cổng HDMI v&agrave; D-sub, m&agrave;n h&igrave;nh LS24R350 cho ph&eacute;p doanh nghiệp bạn kết nối trực tiếp nhiều thiết bị c&ugrave;ng l&uacute;c để thực hiện đa nhiệm dễ d&agrave;ng. Giải quyết c&ocirc;ng việc hiệu quả v&agrave; linh hoạt hơn.</p>', 5290000, 4790000, '1638867135-ss27-1.jpg', 10, 'man-hinh-lcd-27-samsung-ls27r350fhexxv-ips-75hz', '2021-12-07 08:52:15', '2021-12-07 08:52:15', 0),
(27, 'Màn hình LCD 24” Samsung LC24F390FHEXXV LED', '<ul>\r\n	<li>K&iacute;ch thước: 23.5&Prime;</li>\r\n	<li>Độ ph&acirc;n giải: 1920 x 1080 ( 16:9 )</li>\r\n	<li>C&ocirc;ng ngh&ecirc;̣ t&acirc;́m n&ecirc;̀n: VA</li>\r\n	<li>Góc nhìn: 178 (H) / 178 (V)</li>\r\n	<li>Thời gian phản h&ocirc;̀i: 4 ms</li>\r\n</ul>', '<h2><strong>Tổng quan m&agrave;n h&igrave;nh&nbsp;LCD 24&rdquo; Samsung C24F390FHEXXV Cong</strong></h2>\r\n\r\n<p><strong>1. M&agrave;n H&igrave;nh Cong Ho&agrave;n Hảo cho Trải Nghiệm H&igrave;nh Ảnh Tối Ưu</strong></p>\r\n\r\n<p>Kh&aacute;m ph&aacute; trải nghiệm H&igrave;nh Ảnh Sống Động thật sự với m&agrave;n h&igrave;nh cong Samsung. Bao tr&ugrave;m mọi gi&aacute;c quan như một rạp phim iMax thực thụ, độ cong m&agrave;n h&igrave;nh 1800R với b&aacute;n k&iacute;nh v&ograve;ng cung 1800mm cho độ cong tối ưu, tạo ra g&oacute;c nh&igrave;n tốt hơn, tăng cường độ s&acirc;u v&agrave; giảm thiểu xao nh&atilde;ng. Bất kể l&agrave; phim trực tuyến, chương tr&igrave;nh TV hay game h&agrave;nh động hấp dẫn, m&agrave;n h&igrave;nh Samsung sẽ cuốn bạn v&agrave;o thế giới đa phương tiện sống động.</p>\r\n\r\n<p><img alt=\"LCD 24\'\' Samsung LC24F390FHEXXV LED Cong\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2018/12/LCD-24-Samsung-C24F390FHEXXV-Cong-1-1.jpg\" style=\"height:428px; width:800px\" /></p>\r\n\r\n<p><strong>2. M&agrave;n H&igrave;nh 1800R v&agrave; Chế Độ Bảo Vệ Mắt Hiệu Quả</strong></p>\r\n\r\n<p>Đường cong m&agrave;n h&igrave;nh 1800R: độ cong tối ưu hơn của m&agrave;n h&igrave;nh 1800R gi&uacute;p mắt dễ d&agrave;ng theo d&otilde;i m&agrave;n h&igrave;nh đồng thời giữ khoảng c&aacute;ch xem ho&agrave;n hảo. Thử nghiệm l&acirc;m s&agrave;ng được tiến h&agrave;nh bởi khoa Mắt, đại học Quốc gia Seoul. So s&aacute;nh với TV m&agrave;n h&igrave;nh phẳng, kết quả cho thấy người d&ugrave;ng giảm mỏi mắt r&otilde; rệt khi xem m&agrave;n h&igrave;nh cong. Chế Độ Bảo Vệ Mắt: giảm mỏi mắt v&agrave; tăng cường trải nghiệm xem bằng c&aacute;ch giảm lượng &aacute;nh s&aacute;ng m&agrave;u xanh, vốn g&acirc;y mỏi mắt do k&iacute;ch th&iacute;ch v&otilde;ng mạc. Chống Nhấp Nh&aacute;y: c&ocirc;ng nghệ chống nhấp nh&aacute;y gi&uacute;p giảm độ nhấp nh&aacute;y m&agrave;n h&igrave;nh, gi&uacute;p bạn nh&igrave;n m&agrave;n h&igrave;nh dễ chịu hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2018/12/LCD-24-Samsung-C24F390FHEXXV-Cong-2-1.jpg\" style=\"height:428px; width:800px\" /></p>\r\n\r\n<p><strong>3.H&igrave;nh Ảnh Ho&agrave;n Hảo với C&ocirc;ng Nghệ M&agrave;n H&igrave;nh Cao Cấp của Samsung</strong></p>\r\n\r\n<p>Tỷ lệ tương phản tối ưu 3000:1: c&ocirc;ng nghệ tấm nền VA của Samsung mang đến tỷ lệ tương phản 3000:1 cho sắc đen s&acirc;u thẳm hơn, sắc trắng tinh khiết v&agrave; m&agrave;u sắc sống động hơn bao giờ hết. Giảm r&ograve; rỉ &aacute;nh s&aacute;ng: c&ocirc;ng nghệ m&agrave;n h&igrave;nh cong Samsung giảm tối thiểu sự r&ograve; rỉ &aacute;nh s&aacute;ng từ c&aacute;c g&oacute;c m&agrave;n h&igrave;nh, mang đến sắc đen đồng đều tr&ecirc;n mọi khung h&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2018/12/LCD-24-Samsung-C24F390FHEXXV-Cong-3-1.jpg\" style=\"height:428px; width:800px\" /></p>\r\n\r\n<p><strong>4. Chơi Game Hấp Dẫn Mượt M&agrave;</strong></p>\r\n\r\n<p>AMD FreeSync: bằng c&aacute;ch tự động đồng bộ tần số l&agrave;m tươi m&agrave;n h&igrave;nh với tốc độ khung h&igrave;nh/ gi&acirc;y, AMD FreeSync giảm thiểu giựt h&igrave;nh, gi&uacute;p vận h&agrave;nh game mượt m&agrave;. Chế Độ Game: chế độ Game tối ưu m&agrave;u sắc m&agrave;n h&igrave;nh v&agrave; độ tương phản cho bạn thưởng thức từng m&agrave;n game tuyệt hảo nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2018/12/LCD-24-Samsung-C24F390FHEXXV-Cong-4-1.jpg\" style=\"height:428px; width:800px\" /></p>\r\n\r\n<p><strong>5.Vẻ Ngo&agrave;i Ấn Tượng với Thiết Kế Cong Thời Trang</strong></p>\r\n\r\n<p>M&agrave;n h&igrave;nh cong ấn tượng: với độ mỏng kinh ngạc 11.9mm, chỉ bằng một c&acirc;y b&uacute;t bi, độ cong m&agrave;n h&igrave;nh mỏng hơn m&agrave;n h&igrave;nh thế hệ trước. Ch&acirc;n đế tối giản: ch&acirc;n đế thanh lịch l&agrave;m tăng vẻ đẹp của m&agrave;n h&igrave;nh cong si&ecirc;u mỏng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2018/12/LCD-24-Samsung-C24F390FHEXXV-Cong.jpg\" style=\"height:428px; width:800px\" /></p>\r\n\r\n<p><strong>6.Tiết Kiệm Năng Lượng, Bảo Vệ M&ocirc;i Trường</strong></p>\r\n\r\n<p>Điều chỉnh độ s&aacute;ng tự động nhằm tiết kiệm điện: c&ocirc;ng nghệ tiết kiệm điện của Samsung gi&uacute;p giảm độ s&aacute;ng m&agrave;n h&igrave;nh dựa tr&ecirc;n độ ph&aacute;t quang m&agrave;n h&igrave;nh trong khu vực m&agrave;u đen để giảm năng lượng ti&ecirc;u thụ khoảng 10%. Hai chế độ hiệu chỉnh &aacute;nh s&aacute;ng: độ s&aacute;ng m&agrave;n h&igrave;nh c&oacute; thể thiết lập tối thiểu 25% đến tối đa 50% để tiết kiệm năng lượng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://tinhocngoisao.cdn.vccloud.vn/wp-content/uploads/2018/12/LCD-24-Samsung-C24F390FHEXXV-Cong-6-1.jpg\" style=\"height:428px; width:800px\" /></p>', 4990000, 4190000, '1638867201-ss24-1.jpg', 10, 'man-hinh-lcd-24-samsung-lc24f390fhexxv-led', '2021-12-07 08:53:21', '2021-12-07 09:34:00', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_code` timestamp NULL DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `code`, `time_code`, `provider_id`) VALUES
(19, 'admin', 'admin@gmail.com', NULL, '$2y$10$6Rox4CDvGArTXM.03abWqO/bhSSXumJvZxpYX/lehIyu27tkGZHC2', NULL, '2021-11-17 08:20:54', '2021-12-07 08:30:41', 1, NULL, NULL, NULL),
(20, 'yjngji12', 'yjngji12@gmail.com', NULL, '$2y$10$Q9KPlIXoylssXfTXj8nPJOv/e9j2ceoBkrl4MQDbu/5SAiax0U.i2', NULL, '2021-12-07 09:05:56', '2021-12-07 09:31:21', 0, '$2y$10$D/PjM9UO6mwkEPsuHPTZrO6YKajaQAyyLcyXQXKEjjiQhKz8f/rcW', '2021-12-07 09:31:21', NULL),
(21, 'lam', 'lamtqps14394@fpt.edu.vn', NULL, '$2y$10$ECncTy9mkme9COAx8uAP3equCaKjzx.lGWNH1G0MEKAgBP0c/ftjO', NULL, '2021-12-07 09:32:16', '2021-12-07 09:32:16', 0, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_id_blog_foreign` (`id_blog`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_id_order_foreign` (`id_order`),
  ADD KEY `order_details_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_code_index` (`code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_id_blog_foreign` FOREIGN KEY (`id_blog`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
