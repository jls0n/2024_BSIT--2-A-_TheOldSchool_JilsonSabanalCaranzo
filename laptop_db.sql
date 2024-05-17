-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 01:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(7, ' MSI Thin GF63 12U', 'GF63 THIN 12UC-1000PH BLACK INTEL CORE I7-12650H/8GB DDR4 3200MHZ/512GB NVME\r\nPCIE SSD/15.6&#34; FHD IPS 144HZ/NVIDIA GEFORCE RTX3050 4GB GDDR6/WINDOWS 11\r\nHOME SL 64BIT/BACKLIT KB/CAMERA/WIFI/BT/LAN/AUDIO & MIC PORT/USB PORT/USB\r\nTYPE-C/HDMI/LAPTOP', 48995, 'Msi Thin.png', 'Msi Thin-2.png', 'Msi Thin-3.png'),
(8, ' MSI Cyborg 15 A13UCK-833PH', 'Intel® Core™ i5-13420H Processor\r\nWindows 11 Home\r\nNVIDIA® GeForce RTX™ 3050 4GB GDDR6 Laptop GPU\r\n15.6&#34; FHD (1920*1080), 144Hz IPS-Level\r\n512GB NVMe PCIe SSD Gen4x4\r\nDDR5 8GB', 47995, 'Msi Cyborg 15-1.png', 'Msi Cyborg 15-2.png', 'Msi Cyborg 15-3.png'),
(9, ' MSI Modern 15 B12M-045PH', 'Intel® Core™ i7-1255U Processor\r\nWindows 11 Home\r\n(MSI recommends Windows 11 Pro for business.)\r\nIntel® Iris® Xe graphics\r\n15.6&#34; FHD (1920*1080), IPS-Level\r\n512GB NVMe PCIe SSD Gen3x4\r\nOnboard DDR4 8GB', 42995, 'Msi Modern 15.png', 'Msi Modern 15-2.png', 'Msi Modern 15-3.png'),
(11, ' MSI Stealth 16 Mercedes AMG A13VG-403PH', 'Intel® Core™ i9-13900H Processor\r\nWindows 11 Home\r\nNVIDIA® GeForce RTX™ 4070 8GB GDRR6 Laptop GPU\r\n16&#34; 16:10 UHD+ (3840*2400), OLED, 100% DCI-P3 (Typical)\r\n2TB NVMe PCIe SSD Gen4x4\r\nDDR5 16GB*2\r\n', 179995, 'MSI Stealth.webp', 'MSI Stealth-2.webp', 'MSI Stealth-3.webp'),
(12, ' MSI Modern 14 C12M-620PH', 'Intel® Core™ i3-1215U Processor\r\nWindows 11 Home\r\n(MSI recommends Windows 11 Pro for business.)\r\nIntel® UHD Graphics\r\n14&#34; FHD (1920*1080), IPS-Level\r\n512GB NVMe PCIe SSD Gen3x4\r\nOnboard DDR4 8GB', 27995, 'Modern 14.2.png', 'Msi Modern 14.3.png', 'Msi Modern14.4.png'),
(14, ' Prestige 14 AI Evo C1M', 'ntel® Evo™ Edition powered by up to Intel® Core™ Ultra 9 processor 185H\r\nWindows 11 Home / Windows 11 Pro\r\n(MSI recommends Windows 11 Pro for business.)\r\nIntel® Arc™ Graphics\r\n14&#34; FHD+ (1920 x 1200), 16:10, 144 Hz Refresh Rate, 100% sRGB(Typ.), IPS-Level panel\r\nUltra-light 1.7kg, Ultra-slim 18.95mm\r\nSupport Wi-Fi 7\r\nSupport USB PD 3.0 (Power Delivery) Charging\r\nExclusive MSI AI Engine sense the user scenarios and adjust to the best performance mode\r\n*Configuration may vary by models, please ', 72995, 'Prestige 14.2.png', 'Prestige 14.3.png', 'Prestige 14.4.png'),
(15, 'Razer Blade 14', '14&#34; QHD+ 240Hz AMD FreeSync Premium Anti-Glare Matte Finish Up to 100% DCI-P3 Individually factory calibrated Calman Verified\r\nAMD Ryzen 9 8945HS (8-Cores /16-Threads, 16MB L3 Cache, Up to 5.2 GHz max boost) with Radeon™ 780M Graphics\r\nNVIDIA RTX 4060 8GB GDDR6\r\n16GB DDR5 5600MHz\r\n1TB NVMe PCIe SSD\r\nWindows 11 Home\r\nPer key RGB Powered by Razer Chroma™ N-Key rollover keyboard\r\nBlack', 140990, 'razer-blade14.jpg', 'razer-blade14-2.jpg', 'razer-blade14-3.jpg'),
(16, 'Razer Blade 15', 'CPU: Intel Core i7-12800H\r\nRAM: 32GB DDR5/4800 MHz\r\nGPU: Nvidia GeForce RTX 3080 Ti\r\nDisplay: 15.6-inch QHD (2560×1440), non-touch, 240 Hz refresh rate, G-sync\r\nStorage: 1TB SSD PCle Gen4\r\nPorts: 2 x USB-C 3.2 Gen 2 (supports power delivery), 3 x USB-A 3.2 Gen 2, Thunderbolt 4 (USB-C), HDMI 2.1 output, SD card reader, 3.5mm combo port\r\nNetworking: Wi-Fi 6E, Bluetooth 5.2\r\nDimensions: 0.67 x 9.25 x 13.98 inches\r\nWeight: 4.4 lbs (2.01 kg)\r\nColor: Matte black\r\nBattery capacity: 80WHr', 173409, 'razer-blade15.jpg', 'razer-blade15-2.jpg', 'razer-blade15-3.jpg'),
(17, 'Razer Blade 16', '16&#34; QHD+ 240 Hz, 16:10 (2560 x 1600 WQXGA)\r\n13th Gen Intel® Core™ i9-13950HX \r\nNVIDIA® GeForce RTX™ 4060 8GB GDDR6\r\n16GB DDR5 5600MHz\r\n1TB SSD NVMe PCIe SSD\r\nWindows 11 Home\r\nPer key RGB Powered by Razer Chroma N-Key rollover', 167900, 'razer-blade16.jpg', 'razer-blade16-2.jpg', 'razer-blade16-3.jpg'),
(18, 'Lenovo LOQ', 'Processor\r\n12th Generation Intel® Core™ i5-12450HX Processor (E-cores up to 3.10 GHz P-cores up to 4.40 GHz)\r\n\r\nOperating System\r\nWindows 11 Home 64 Single Language\r\n\r\nGraphic Card\r\nIntel® Arc™ A530M 4GB GDDR6\r\n\r\nMemory\r\n8 GB DDR5-4800MHz (SODIMM)\r\n\r\nStorage\r\n512 GB SSD M.2 2242 PCIe Gen4 QLC\r\n\r\nDisplay\r\n15.6&#34; FHD (1920 x 1080), IPS, Anti-Glare, Non-Touch, 100%sRGB, 300 nits, 144Hz\r\n\r\nCamera\r\n720P HD with Dual Microphone\r\n\r\nBattery\r\n4 Cell Li-Polymer 60Wh\r\n\r\nAC Adapter / Power Supply\r\n170W S', 47552, 'Lenovo LOQ.jpg', 'Lenovo LOQ-2.jpg', 'Lenovo LOQ-3.jpg'),
(19, 'Lenovo IdeaPad Slim', '	• Processor - AMD Ryzen™ 5 7530U\r\n• Graphics - AMD Radeon™ Graphics\r\n• Memory - 16GB Soldered DDR4-3200\r\n• Storage - 512GB SSD M.2 2242 PCIe® 4.0x4 NVMe®\r\n• Resolution - 1920 x 1080\r\n• Panel size - 15.6&#34;\r\n• Battery - Integrated 47Wh', 35999, 'Lenovo Ideapad Slim 3.webp', 'Lenovo Ideapad Slim3-2.webp', 'Lenovo Ideapad Slim3-3.webp'),
(21, 'lenovo ThinkPad E14', 'Lenovo ThinkPad E14 Gen 5 21JRS01P00 - Graphite Black | AMD Ryzen 7 7730U (8C / 16T, 2.0 / 4.5GHz, 4MB L2 / 16MB L3) | 8GB Soldered DDR4-3200 + 8GB SO-DIMM DDR4-3200 | 512GB SSD M.2 2242 PCIe 4.0x4 NVMe Opal 2.0 | 14inch WUXGA (1920x1200) IPS 300nits Anti-glare, 45% NTSC | WLAN + Bluetooth Wi-Fi 6, 11ax 2x2 + BT5.1 | Windows 11 Pro', 45695, 'ThinkPad E14.jpg', 'ThinkPad E14-2.jpg', 'ThinkPad E14-3.jpg'),
(22, 'Lenovo Yoga ', 'Processor	\r\nUp to AMD Ryzen 7 7730U\r\n\r\nOperating System	\r\nUp to Windows 11 Pro\r\n\r\nGraphics	\r\nAMD Radeon integrated graphics\r\n\r\nDisplay	\r\n13.3” WUXGA (1920 x 1200) IPS, 300 nits, 100% sRGB, 16:10, Touchscreen\r\n\r\nMemory	\r\nUp to 16GB DDR4\r\n\r\nBattery	\r\nUp to 12.5 hours (MM18)\r\n\r\nUp to 17 hours (Video playback)\r\n\r\nStorage	\r\nUp to 1TB M.2 PCIe SSD\r\n\r\nSecurity	\r\nWebcam privacy shutter\r\n\r\nAudio	\r\n2 x 2W speakers\r\n\r\nDolby Atmos™\r\n\r\nCamera	\r\nFHD 1080p + IR, with privacy shutter, fixed focus\r\n\r\nDimensions ', 106700, 'Lenovo Yoga.jpg', 'Lenovo Yoga-2.jpg', 'Lenovo Yoga-3.jpg'),
(23, 'Lenovo Legion 7i', '16&#34; 240Hz WQXGA (2560x1600) IPS 500nits Anti-glare Display\r\nIntel® Core™ i9-13900HX Processor\r\nNVIDIA® GeForce RTX™ 4090 16GB GDDR6\r\n32GB DDR5 5600Mhz\r\n1TB M.2 PCIe NVMe SSD \r\nWindows 11 Home\r\nPer-key RGB Backlit\r\nOnyx Grey', 159990, 'Lenovo Legion 7i.jpg', 'Lenovo Legion 7i-2.jpg', 'Lenovo Legion 7i-3.jpg'),
(24, 'Lenovo Legion 5i Pro', '16&#34; WQXGA (2560x1600) IPS 500nits Anti-glare, 100% sRGB, 240Hz, DisplayHDR™ 400, Dolby® Vision™, G-SYNC®, Low Blue Light, High Gaming Performance \r\nIntel Core™ i9-13900HX\r\nNVIDIA GeForce RTX™ 4070 8GB GDDR6\r\n16GB DDR5 5600MHz\r\n1TB M.2 PCIe NVMe SSD \r\nWindows 11 Home\r\n4-Zone RGB Backlit Keyboard\r\nOnyx Grey', 109900, 'Lenovo Legion 5i Pro.jpg', 'Lenovo Legion 5i Pro-2.jpg', 'Lenovo Legion 5i Pro-3.jpg'),
(25, 'Acer Predator', 'Color: Obsidian Black\r\nOperating System: Windows 11 Home\r\nProcessor: Intel Core i5-13420H 2.10 GHz Octa-core (8 Core) 13th Gen\r\nGraphics: NVIDIA GeForce RTX 2050 6GB GDDR6\r\nDisplay: 15.6inch (1920 x 1080) FHD IPS 144Hz\r\nMemory: 8 GB DDR5 SDRAM (up to 32GB)\r\nStorage: 512GB NVMe SSD\r\nConnectivity: IEEE 802.11 a/b/g/n/ac/ax\r\nBluetooth Standard: Bluetooth 5.1 or above', 45999, 'Acer Predator.webp', 'Acer Predator-2.webp', 'Acer Predator-3.webp'),
(26, 'Acer Aspire 3', 'Processor: Intel Core i3-N305\r\nMemory: 8GB RAM\r\nStorage: 512GB SSD\r\nDisplay: 15.6 Inches FHD\r\nGraphics: Intel UHD Graphics\r\nOperating System: Windows 11 Home Single Language', 23999, 'Acer Aspire 3.png', 'Acer Aspire 3-2.png', 'Acer Aspire 3-3.png'),
(27, 'Acer Swift 3 ', 'Screen	14.0-inch, 1920 x 1080 px, 16:9, IPS, matte, non-touch\r\nProcessor	Intel Alder Lake Core i5-1240P or i7-1260P, 28W sustained design.\r\nVideo	Intel Iris Xe\r\nMemory	up to 16 GB LPDDR4x-4266 (soldered, dual-channel)\r\nStorage	2x M.2 slots, PCIe gen4 (1TB WD SN735 on this unit)\r\nConnectivity	Wi-Fi 6E (Killer AX1675i), Bluetooth 5.2\r\nPorts	2x USB-A 3.1, 2x USB-C with Thunderbolt 4 (40GBps data, DP and charging), HDMI 2.1 (?), mic/headphone, Kensington Lock\r\nBattery	56 Wh, 65W barrel-plug charger\r', 70000, 'Acer Swift 3.webp', 'Acer Swift 3-2.webp', 'Acer Swift 3-3.webp'),
(28, 'Acer Swift Go', '4&#34; IPS Touchscreen\r\nIntel Core 13th Gen i7-1335U\r\nIntel Iris Xe Graphics\r\n16GB LPDDR5\r\n512GB PCIe SSD\r\nWindows 11 Home\r\nBacklit Keyboard\r\n', 45990, 'Acer Swift Go.jpg', 'Acer Swift Go-2.jpg', 'Acer Swift Go-3.jpg'),
(29, 'Acer Predator Hellios', '16&#34; WQXGA 165Hz LED Backlight In-plane Switching (IPS) Technology\r\n13th Gen Intel® Core™ i7-13700HX  \r\nNVIDIA GeForce RTX 4060 8GB GDDR6\r\n16GB DDR5 4800Mhz\r\n1TB PCIe NVMe SSD\r\nBacklit Keyboard\r\nWindows 11 Home\r\nPer Key RGB Backlit Keyboard', 79990, 'Acer Predator Helios.jpg', 'Acer Predator Helios-2.jpg', 'Acer Predator Hellios-3.jpg'),
(30, 'Acer Triton ', '14&#34; WUXGA 165Hz IPS\r\n13th Gen Intel i7-13700H\r\nNVIDIA RTX 4050 6GB GDDR6\r\n16GB LPDDR5\r\n512GB PCIE SSD\r\nWindows 11 Home\r\nRGB Backlit keyboard', 65990, 'Acer Triron.jpg', 'Acer Triton 14-2.jpg', 'Acer Triton 14-3.jpg'),
(31, 'Asus Zenbook', '14.5&#34; 120Hz OLED WQXGA+ (WQ+) Glossy Narrow Border (100% DCI-P3) Touchscreen Display \r\nIntel 13 Gen Raptor Lake Core i9-13900H Processor\r\nNVIDIA GeForce RTX 4070 8GB GDDR6 \r\n32GB DDR5 4800MHz\r\n1TB NVMe PCIe SSD \r\nWindows 11 Home\r\nBacklit Chiclet Keyboard \r\nTech Black', 130990, 'Asus Zenbook.jpg', 'Asus Zenbook-2.jpg', 'Asus Zenbook-3.jpg'),
(32, 'Asus ROG G15', 'Asus ROG Strix G15 Advantage Edition | AMD Ryzen 9 5980HX | AMD Radeon RX 6800M | 15.6″ QHD 165hz Display | 16GB DDR4 | 512GB M.2 SSD | Windows 11 Home | Black', 101990, 'Asus ROG.jpg', 'Asus ROG-2.jpg', 'Asus ROG-3.jpg'),
(33, 'Asus ROG Zephyrus', 'Asus ROG Zephyrus G14 | AMD Ryzen 9 6900HS | AMD Radeon 6700S | 14″ WQXGA 120Hz Display | 16GB DDR5 | 1TB M.2 SSD | Windows 11 Home | Moonlight White', 92990, 'Asus ROG Zephyrus.jpg', 'Asus ROG Zephyrus-2.jpg', 'Asus ROG Zephyrus-3.jpg'),
(34, 'Asus ROG Flow', 'Asus ROG Flow Z13 | Intel Core i9-12900H | NVIDIA GeForce RTX 3050 Ti | 13.4″ WUXGA 500nits 120Hz Touchscreen Display | 16GB LPDDR5 | 1TB M.2 SSD | Windows 11 Home | Black\r\n', 135990, 'Asus ROg FLow.jpg', 'Asus Rog Flow-2.jpg', 'Asus Rog Flow-3.jpg'),
(35, 'Asus X15', 'ASUS X515EA-EJ1033W TRANSPARENT-SILVER | Intel CORE i3-1115G4 | 8GB (4GB DDR4 on board + 4GB DDR4 SO-DIMM) RAM | 1TB HDD + 128GB SSD | 15.6&#34; FHD Display | Intel UHD Graphics | Keyboard & Touchpad Chiclet Keyboard | Windows 11 | Wi-Fi 5(802.11ac)+Bluetooth 4.1 (Dual band) 1*1 | 37WHrs, 2S1P, 2-cell Li-ion', 19995, 'Asus X15.jpg', 'Asus X15-2.jpg', 'Asus X15-3.jpg'),
(36, 'Asus Vivobook', '15.6&#34; Full HD 1920 x 1080 NanoEdge IPS display\r\n11th Generation Intel Core i3-1115G4 Processor\r\nIntel UHD Graphics\r\n8GB DDR4 RAM\r\n128GB NVMe™ PCIe SSD\r\nWindows 11 Home in S Mode\r\nBacklit Keyboard\r\nSlate Grey', 24990, 'Asus Vivobook.jpg', 'Asus Vivobook-2.jpg', 'Asus Vivobook-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(10, 'admin', 'jilsoncaranzo@yahoo.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
