/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100425 (10.4.25-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : abc

 Target Server Type    : MariaDB
 Target Server Version : 100425 (10.4.25-MariaDB)
 File Encoding         : 65001

 Date: 03/12/2022 22:30:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id_blog` int(11) NOT NULL,
  `id_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_create` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_blog`) USING BTREE,
  INDEX `fk_blog_category`(`id_category`) USING BTREE,
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `blog_category` (`id_category`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (101, '1', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/11/1667900929-anh-1-tien-do-khai-son-city.jpg', 'Thi công đúng tiến độ, Khai Sơn City hút khách mua dự án', 'Không chỉ hút khách mua bởi vị thế đắc địa, thiết kế hiện đại, việc dự án chung cư Khai Sơn City thi công đúng tiến độ, đảm bảo chất lượng.', '2023-01-11');
INSERT INTO `blog` VALUES (102, '2', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/11/1667900823-anh1-khaisoncity-colinh.jpg', 'Cen Land và Cen BSM tổ chức sự kiện tri ân khách hàng trong năm', 'Chiều 26/01/2022 tại Hà Nội, Cen Land và Cen BSM đã tổ chức sự kiện “Cen đầu tư – tôi sẽ bán” nhằm tri ân các sàn liên kết trong năm 2021.', '2023-01-21');
INSERT INTO `blog` VALUES (103, '1', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/10/1665366546-anh-1-cen-land-phan-phoi-khai-son-city.jpg', 'Đường Cổ Linh kéo dài sắp hoàn thiện, bất động sản Long Biên', 'Bất động sản Long Biên những năm gần đây được xem là “đến thời” nhờ hội tụ nhiều lợi thế hàng đầu về quy hoạch hạ tầng', '2023-01-15');
INSERT INTO `blog` VALUES (104, '3', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/10/1665366308-anh-1-kosy-lita-ha-nam.jpg', 'Ngày 5/12/2022, Ấn tượng Đại lễ hội kỷ niệm 20 năm thành lập', 'Ghi dấu tuổi 20 rực rỡ, Cen Group vừa tổ chức đại lễ hội “Hiện thực hóa triệu ước mơ” vào ngày 29/10/2022 tại Trung tâm Hội nghị Quốc gia.', '2022-12-08');
INSERT INTO `blog` VALUES (105, '1', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/10/1664934645-anh1-khai-son-city-cen-land-phan-phoi.jpg', 'Cen Land: Tăng vốn điều lệ, tự tin doanh thu 10.000 tỷ', 'Cen Elite là nơi quy tụ những nhân tài tinh hoa, những người xuất sắc nhất trong đội ngũ chuyên viên tư vấn bất động sản.', '2023-01-06');
INSERT INTO `blog` VALUES (106, '3', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/09/1662459440-cen-group-hien-mau-2022-1.jpg', 'Chủ đầu tư Khai Sơn và hành trình “đánh thức” tiềm năng.', 'Mang trong mình sứ mệnh tiên phong, dẫn dắt thị trường, trải qua 28 năm hình thành và phát triển, Công ty CP Khai Sơn luôn nỗ lực phấn đấu.\r\n', '2023-01-18');
INSERT INTO `blog` VALUES (107, '4', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/08/1660535844-anh1-cre-cenland.jpg', 'Sức hút của thị trường BĐS Duy Tiên và cơ hội cho giới địa ốc', 'Hội tụ những tiềm năng về vị trí, hạ tầng, quy hoạch; Duy Tiên đang trở thành “ngôi sao sáng” trên bản đồ thị trường bất động sản.', '2023-01-12');
INSERT INTO `blog` VALUES (108, '5', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/04/1650511675-sapa-jade-hill-du-lich-mua-sam-cen-land-1-1.jpg', 'Tận hưởng “bữa tiệc thị giác” với tầm view triệu đô ở Sapa\r\n', 'Khai Sơn City - dự án căn hộ mang phong cách hiện đại tại trung tâm Hà Nội đang được các nhà đầu tư săn đón khi mang đến cho tầng lớp tinh hoa.\r\n', '2023-01-05');
INSERT INTO `blog` VALUES (109, '2', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/04/1649402527-cen-land-hoa-tien-paradise-tong-the-1.jpg', 'Cen Land: Thông điệp “hiện thực hóa ước mơ của bạn”', 'Trước những diễn biến của thị trường bất động sản, Cen Land ngay lập tức có những giải pháp chiến lược nhằm giữ vững vị thế và thực hiện hoá ước mơ', '2023-01-20');
INSERT INTO `blog` VALUES (110, '1', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/03/1646708465-pic3-sapa-jade-hill-ra-mat-the-central.jpg', 'Tâm điểm nhịp sống xanh phía Đông TP.HCM thu hút giới tinh hoa ', 'Thị trường bất động sản nửa cuối năm 2022 được nhận định có nhiều tích cực, nhiều dự án tiềm năng được phát triển bởi các “ông lớn” sẽ tiếp tục dậy sóng.', '2023-01-20');
INSERT INTO `blog` VALUES (111, '3', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/03/1646708309-cen-land-hoa-tien-paradise-ban-cong-golf-1.jpg', 'Shophouse Louis City Hoàng Mai – Biểu tượng đẳng cấp mới ', 'Hoàn thiện 70% tiến độ xây dựng, Louis City Hoàng Mai - khu đô thị 22,3 ha, phát triển bởi chủ đầu tư Công ty cổ phần Đầu tư phát triển Đô thị Hoàng Mai.\r\n', '2023-01-20');
INSERT INTO `blog` VALUES (112, '5', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/02/1645410699-pic1-sapa-jade-hill-ra-mat-the-central.jpg', 'Nhà đầu tư chớp thời điểm vàng săn bất động sản đô thị sinh thái ', 'Công ty cổ phần BĐS Thế Kỷ (Cen Land) sẽ chính thức giới thiệu phân khu River Park 1 - dự án Aqua City - đô thị sinh thái thông minh phía Đông TP HCM được phát triển bởi Tập đoàn Novaland.\r\n', '2023-01-05');
INSERT INTO `blog` VALUES (113, '2', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/02/1645410700-pic2-sapa-jade-hill-ra-mat-the-central.jpg', 'Thị trường bất động sản khan hiếm nguồn cung, đâu là tâm điểm?', 'Ngày 5/11/2021 Cen Group đã phối hợp với Viện Huyết học & Truyền máu Trung ương tổ chức chương trình hiến máu nhân đạo.', '2023-02-04');
INSERT INTO `blog` VALUES (114, '4', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1642821901-cenland-hoatienparadise-1-1.jpg', 'Cơ hội sở hữu shophouse đẹp nhất cuối cùng tại Louis City', 'Louis City Hoàng Mai vừa cho ra mắt giỏ hàng những căn shophouse cuối cùng đẹp nhất dự án giai đoạn II, hứa hẹn thỏa mãn nhu cầu đầu tư.', '2023-01-17');
INSERT INTO `blog` VALUES (115, '2', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1641810634-cen-land-trinity-tower.jpg', 'Giải pháp giúp “gỡ rối” việc tra cứu giá bất động sản', 'Đối với giao dịch bất động sản, xác định giá luôn được xem yếu tố quan trọng hàng đầu. Tuy nhiên, đây là bài toán khó cho cả người mua và người bán, làm sao để không bị “mua hớ” hoặc “bán lỗ”.', '2023-01-11');
INSERT INTO `blog` VALUES (116, '4', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1641810635-cen-land-trinity-tower-3.jpg', 'Lựa chọn nào để cân bằng giữa “sống gần trung tâm” và “sống xa ngột ngạt?', 'Những bộn bề, áp lực của cuộc sống khiến nhiều người mong muốn có được một tổ ấm xa rời ồn ào, khói bụi của thành phố trong tương lai.\r\n', '2022-12-13');
INSERT INTO `blog` VALUES (117, '2', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1640916431-cen-land-the-sailing-quy-nhon.jpg', 'Khách hàng “săn” mua căn hộ BMG Hà Nội trước thời điểm', 'Tiến độ hoàn thiện đúng cam kết, sắp bàn giao và đi vào hoạt động, khu căn hộ BMG Hà Nội (93 Đức Giang, Long Biên) đang gia tăng sức nóng.', '2022-12-14');
INSERT INTO `blog` VALUES (118, '2', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1640916431-cen-land-the-sailing-quy-nhon-2.jpg', 'Cenhomes.vn phân phối độc quyền dự án Kosy Lita Hà Nam tại Hà Nội', 'Với uy tín hàng đầu trên thị trường bất động sản, Cenhomes.vn tham gia ký kết hợp tác cùng Tập đoàn Kosy, trở thành đơn vị phân phối độc quyền.', '2022-12-05');
INSERT INTO `blog` VALUES (119, '2', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1640072319-cen-land-the-sailing-quy-nhon-6.jpg', 'Nhận nhà ở ngay tại căn hộ hàng hiệu do Savills quản lý vận hành', 'Không chỉ thu hút nhờ vị trí trung tâm quận Đống Đa cùng nhiều tiện ích đẳng cấp, hiện đại, Hateco Laroma của Hateco Group còn là dự án cao cấp được quản lý vận hành bởi Savills - đơn vị hàng đầu.', '2022-12-03');
INSERT INTO `blog` VALUES (120, '4', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1640072323-cen-land-the-sailing-quy-nhon-2-3.jpg', 'Sức hút của The Central – Shophouse quy mô bậc nhất Sapa trong năm 2012', 'Sapa những năm gần đây đang cho thấy sự thay đổi ngoạn mục cả về diện mạo cũng như chất lượng dịch vụ, xây dựng xứng tầm một “kinh đô nghỉ mát”.', '2022-12-13');
INSERT INTO `blog` VALUES (121, '5', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/11/1668997117-z3897631641599cbad266ea7490eb45bc1f8eba9f2862b.jpg', 'Chủ đầu tư Hoa Tiên Paradise hợp tác với Landmarks ', 'Sau khi “bắt tay” với Cen Land - đơn vị hàng đầu về phân phối bất động sản, chủ đầu tư Hoa Tiên Paradise tiếp tục hợp tác với công ty thiết kế cảnh quan nổi tiếng Landmarks.', '2022-12-14');
INSERT INTO `blog` VALUES (122, '5', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/11/1667900823-anh2-khaisoncity-colinh.jpg', 'Công ty TNHH Thương mại NPG Việt Nam trao gửi yêu thương ', 'Công ty TNHH Thương mại NPG Việt Nam là doanh nghiệp chuyên sản xuất và kinh doanh các sản phẩm gạch ốp, gạch lát, gạch trang trí chất liệu Ceramic (Gạch men)/ Porcelain cao cấp. ', '2022-12-05');
INSERT INTO `blog` VALUES (123, '4', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1639534858-hoa-tien-paradise-su-kien-2.jpg', 'Cen Group trao tặng xe cứu thương cho Sở lao động', 'Đại diện Tập đoàn Cen Group đã trao tặng xe cứu thương cho Sở LĐTBXH tỉnh Quảng Nam. Đây là món quà rất ý nghĩa, giúp địa phương có thêm phương tiện vận chuyển bệnh nhân cấp cứu.', '2022-12-03');
INSERT INTO `blog` VALUES (124, '2', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1639014843-cen-land-the-sailing-quy-nhon-1-2.jpg', 'Cen Land và Hồng Lam Xuân Thành ký kết hợp tác đầu tư phát triển ', 'Sáng ngày 26/03/2022 tại Hà Nội, Công ty Cổ phần Bất động sản Thế Kỷ (Cen Land) và Công ty Cổ phần Hồng Lam Xuân Thành đã chính thức ký kết hợp tác đầu tư phát triển dự án Hoa Tiên Paradise. ', '2022-12-13');
INSERT INTO `blog` VALUES (125, '3', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1639014849-cen-land-the-sailing-quy-nhon-2-2.jpg', 'Kinh tế Hà Tĩnh và những con số “biết nói” đầy bất ngờ', 'Trái với hình dung của nhiều người về một vùng đất khó khăn, chỉ có gió Lào, thiên tai, Hà Tĩnh ngày càng “thay da đổi thịt” với những thành tựu ấn tượng về nhiều mặt. ', '2022-12-14');
INSERT INTO `blog` VALUES (126, '4', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1638418964-cen-land-the-sailing-quy-nhon.jpg', 'Ra mắt nhà phố thương mại nằm tại trung tâm Sapa Jade Hill', 'Sở hữu vị trí trung tâm quần thể nghỉ dưỡng núi cao cấp bậc nhất Việt Nam – Sapa Jade Hill, nhà phố thương mại The Central hứa hẹn tạo nên một không gian giao thương đậm chất văn hóa Sapa.', '2022-12-05');
INSERT INTO `blog` VALUES (127, '5', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/11/1637029068-sgcungdanthanhpho1-min.jpg', 'Hoa Tiên Paradise sẵn sàng chào diện mạo mới', 'Sau thời gian dài bị “nén lại”, nhu cầu du lịch của người dân càng tăng cao. Vì vậy, một điểm đến mới lạ, đặc sắc thu hút khách du lịch.', '2022-12-03');
INSERT INTO `blog` VALUES (128, '3', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/11/1637027153-z2618195801854c58fc8bffd4ee73bb62665b4a6d5e643-1-1626527491431454758496.jpg', 'Cen Land hợp tác cùng Vinahud – “mối duyên” đặc biệt.', 'Cen Land ký kết hợp tác chiến lược với Vinahud thu hút sự chú ý mạnh mẽ của thị trường. Không chỉ bởi tên tuổi của hai doanh nghiệp.', '2022-12-13');
INSERT INTO `blog` VALUES (129, '4', 'https://blog.hoozing.vn/wp-content/uploads/2020/06/thi-truong-bat-dong-san-viet-nam-2020.jpg', 'Cen Land và Vinahud: Hợp tác chiến lược, kết nối thành công', 'Tại Hà Nội, lễ ký kết hợp tác chiến lược giữa Cen Land (CRE) và Vinahud (VHD) đã diễn ra thành công tốt đẹp.', '2022-12-14');
INSERT INTO `blog` VALUES (130, '5', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/11/1636508799-rs-the-sailing-bay-1.jpg', 'Bạn đã một lần chạm tới vẻ đẹp “không thể quên”', 'Sapa là một trong những địa điểm du lịch hấp dẫn nhất khu vực phía Bắc. Chúng ta vẫn biết đến Sapa với khung cảnh thiên nhiên hùng vĩ.', '2023-01-20');

-- ----------------------------
-- Table structure for blog_details
-- ----------------------------
DROP TABLE IF EXISTS `blog_details`;
CREATE TABLE `blog_details`  (
  `id_ctblog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_blog` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_ctblog`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_details
-- ----------------------------
INSERT INTO `blog_details` VALUES ('10', 104, 'Thi công đúng tiến độ, Khai Sơn City hút khách mua dự án bất động sản', 'Không chỉ hút khách mua bởi vị thế đắc địa, thiết kế hiện đại, việc dự án chung cư Khai Sơn City thi công đúng tiến độ, đảm bảo chất lượng.', 'Bên cạnh đó, Cen Elite còn tạo điều kiện tối đa để các thành viên thăng hạng bản thân, phát triển kỹ năng và xây dựng hương hiệu cá nhân chuyên nghiệp và uy tín. Với việc xây dựng và đưa ra lộ trình thăng tiến cũng như đào tạo toàn diện, Cen Elite sẽ giúp', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/11/1667900929-anh-1-tien-do-khai-son-city.jpg');
INSERT INTO `blog_details` VALUES ('101', 101, 'Cen Land và Cen BSM tổ chức sự kiện tri ân khách hàng trong năm 2021', 'Chiều 26/01/2022 tại Hà Nội, Cen Land và Cen BSM đã tổ chức sự kiện “Cen đầu tư – tôi sẽ bán” nhằm tri ân các sàn liên kết trong năm 2021.', 'Lấy trải nghiệm của khách hàng làm kim chỉ nam, chủ đầu tư Khai Sơn luôn hướng đến việc phát triển những sản phẩm chất lượng với tốc độ thi công thần tốc, đảm bảo tiến độ bàn giao. Bên cạnh đó, chủ đầu tư Khai Sơn luôn cập nhật thường xuyên thông tin về t', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/11/1667900823-anh1-khaisoncity-colinh.jpg');
INSERT INTO `blog_details` VALUES ('102', 102, 'Đường Cổ Linh kéo dài sắp hoàn thiện, bất động sản Long Biên', 'Bất động sản Long Biên những năm gần đây được xem là “đến thời” nhờ hội tụ nhiều lợi thế hàng đầu về quy hoạch hạ tầng, phát triển kinh tế, xã hội.', 'Cen Elite sẽ mang đến cho thành viên những biệt đãi có 1-0-2, những biệt đãi hiếm có mà bất cứ sale bất động sản nào cũng đều khao khát. Với nguồn khách hàng siêu VIP, mức hoa hồng siêu khủng cùng nguồn hàng siêu cấp mà không phải ai cũng có cơ hội “chạm”', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/10/1665366546-anh-1-cen-land-phan-phoi-khai-son-city.jpg');
INSERT INTO `blog_details` VALUES ('103', 103, 'Ngày 5/12/2022, Ấn tượng Đại lễ hội kỷ niệm 20 năm thành lập', 'Ghi dấu tuổi 20 rực rỡ, Cen Group vừa tổ chức đại lễ hội “Hiện thực hóa triệu ước mơ” vào ngày 29/10/2022 tại Trung tâm Hội nghị Quốc gia.', 'Thành viên Cen Elite sẽ được tham gia các khóa đào tạo chuyên sâu cùng các chuyên gia hàng đầu; được đầu tư xây dựng hình ảnh chuyên nghiệp; trang bị kiến thức đa ngành: tài chính, phong thủy, kinh doanh…; được huấn luyện các bộ môn thể thao/ giải trí thờ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/10/1665366308-anh-1-kosy-lita-ha-nam.jpg');
INSERT INTO `blog_details` VALUES ('104', 105, 'Cen Land: Tăng vốn điều lệ, tự tin doanh thu 10.000 tỷ', 'Cen Elite là nơi quy tụ những nhân tài tinh hoa, những người xuất sắc nhất trong đội ngũ chuyên viên tư vấn bất động sản.', 'Chập chững những bước đi đầu tiên khi chỉ sau 6 tháng thành lập, ngày 01/04/1995, Công ty Khai Sơn bắt đầu với số vốn 828 triệu đồng bằng lễ khởi công đầu tư xây dựng nhà máy gạch Tuy-nel công suất 20 triệu viên/ năm tại Thuận Thành, Bắc Ninh. Tuy nhiên, ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/10/1664934645-anh1-khai-son-city-cen-land-phan-phoi.jpg');
INSERT INTO `blog_details` VALUES ('105', 106, 'Chủ đầu tư Khai Sơn và hành trình “đánh thức” tiềm năng.', 'Mang trong mình sứ mệnh tiên phong, dẫn dắt thị trường, trải qua 28 năm hình thành và phát triển, Công ty CP Khai Sơn luôn nỗ lực phấn đấu.\r\n', 'Không chùn bước trước khó khăn, cùng với chiến lược kinh doanh sáng tạo của ban lãnh đạo, tháng 8/1995 Công ty đã trúng thầu công trình xây dựng nhà máy gạch Tuy-nel Cầu Ngà, là công trình xây dựng trọng điểm của tỉnh Hà Bắc lúc bấy giờ, với giá trị trúng', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/09/1662459440-cen-group-hien-mau-2022-1.jpg');
INSERT INTO `blog_details` VALUES ('106', 107, 'Sức hút của thị trường BĐS Duy Tiên và cơ hội cho giới địa ốc', 'Hội tụ những tiềm năng về vị trí, hạ tầng, quy hoạch; Duy Tiên đang trở thành “ngôi sao sáng” trên bản đồ thị trường bất động sản.', 'Cuối năm 1996, Công ty Khai Sơn đổi địa điểm kinh doanh về Thuận Thành, Bắc Ninh và lựa chọn sản xuất tấm lợp Fibro xi măng. Những biến động thị trường trong giai đoạn năm 1997-1998 tưởng chừng đánh gục mọi thành quả, nhưng bằng ý chí, nghị lực, sự đồng l', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/08/1660535844-anh1-cre-cenland.jpg');
INSERT INTO `blog_details` VALUES ('107', 108, 'Tận hưởng “bữa tiệc thị giác” với tầm view triệu đô ở Sapa\r\n', 'Khai Sơn City - dự án căn hộ mang phong cách hiện đại tại trung tâm Hà Nội đang được các nhà đầu tư săn đón khi mang đến cho tầng lớp tinh hoa.\r\n', 'Từ một Công ty TNHH nhỏ bé với số vốn ban đầu 828 triệu đồng, đến tháng 8 năm 2008 đã chuyển đổi thành Công ty cổ phần với số vốn lên tới 365 tỷ đồng, hiện nay là hơn 1000 tỷ đồng. Trải qua 28 năm xây dựng và phát triển, đánh đổi bằng mồ hôi, công sức, ng', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/04/1650511675-sapa-jade-hill-du-lich-mua-sam-cen-land-1-1.jpg');
INSERT INTO `blog_details` VALUES ('108', 109, 'Cen Land: Thông điệp “hiện thực hóa ước mơ của bạn”', 'Trước những diễn biến của thị trường bất động sản, Cen Land ngay lập tức có những giải pháp chiến lược nhằm giữ vững vị thế và thực hiện hoá ước mơ của chủ đầu tư cũng như người mua nhà.', 'Trong quá trình hoạt động, Cty đã đạt được nhiều thành tựu đáng khích lệ, nhận được rất nhiều bằng khen về thành tích xuất sắc cũng như có nhiều đóng góp cho phong trào của địa phương. Đặc biệt, năm 2015, Cty rất vinh dự được nhận giải thưởng Top 30 “Nhãn', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/04/1649402527-cen-land-hoa-tien-paradise-tong-the-1.jpg');
INSERT INTO `blog_details` VALUES ('109', 110, 'Tâm điểm nhịp sống xanh phía Đông TP.HCM thu hút giới tinh hoa ', 'Thị trường bất động sản nửa cuối năm 2022 được nhận định có nhiều tích cực, nhiều dự án tiềm năng được phát triển bởi các “ông lớn” sẽ tiếp tục dậy sóng.', 'Đầu năm 2017, Công ty bắt đầu triển khai dự án khu đô thị Khai Sơn City - dự án đầu tay tại Thủ đô. Tọa lạc ngay giữa trung tâm quận Long Biên, Khai Sơn City như một thành phố thu nhỏ giữa lòng Hà Nội, với đầy đủ các tiện ích, đáp ứng toàn bộ nhu cầu khôn', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/03/1646708465-pic3-sapa-jade-hill-ra-mat-the-central.jpg');
INSERT INTO `blog_details` VALUES ('110', 111, 'Shophouse Louis City Hoàng Mai – Biểu tượng đẳng cấp mới ', 'Hoàn thiện 70% tiến độ xây dựng, Louis City Hoàng Mai - khu đô thị 22,3 ha, phát triển bởi chủ đầu tư Công ty cổ phần Đầu tư phát triển Đô thị Hoàng Mai.\r\n', 'Trải qua 28 năm xây dựng và phát triển, bằng tâm lực, trí lực và bản lĩnh, sức sáng tạo của tập thể cán bộ, nhân viên qua các thời kỳ, Công ty cổ phần Khai Sơn đã vươn lên phát triển mạnh mẽ không ngừng, luôn hướng tới mục tiêu xây dựng một Tập đoàn hùng ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/03/1646708309-cen-land-hoa-tien-paradise-ban-cong-golf-1.jpg');
INSERT INTO `blog_details` VALUES ('111', 112, 'Nhà đầu tư chớp thời điểm vàng săn bất động sản đô thị sinh thái ', 'Công ty cổ phần BĐS Thế Kỷ (Cen Land) sẽ chính thức giới thiệu phân khu River Park 1 - dự án Aqua City - đô thị sinh thái thông minh phía Đông TP HCM được phát triển bởi Tập đoàn Novaland.\r\n', 'Với các ưu thế về địa lý, tự nhiên, môi trường kinh tế và văn hoá, xã hội cũng như sự hỗ trợ của chính quyền địa phương, Duy Tiên đang mạnh mẽ vươn lên, trở thành điểm đến “sáng giá” cho các nhà đầu tư.\r\n\r\nNhững năm gần đây, thị xã Duy Tiên đang chú trọng', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/02/1645410699-pic1-sapa-jade-hill-ra-mat-the-central.jpg');
INSERT INTO `blog_details` VALUES ('112', 113, 'Thị trường bất động sản khan hiếm nguồn cung, đâu là tâm điểm?', 'Ngày 5/11/2021 Cen Group đã phối hợp với Viện Huyết học & Truyền máu Trung ương tổ chức chương trình hiến máu nhân đạo “TRAO ƯỚC MƠ HỒNG - GIEO MẦM SỰ SỐNG”.', 'Nằm ở cửa ngõ phía Nam của Hà Nội, thị xã Duy Tiên được coi là đầu mối giao thông quan trọng, nơi có tuyến đường sắt Bắc - Nam, quốc lộ 1A, quốc lộ 38, kết nối giữa Hà Nội - Phủ Lý, Hưng Yên - Hà Nam… Bên cạnh đó còn có đường cao tốc Cầu Giẽ - Ninh Bình, ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/02/1645410700-pic2-sapa-jade-hill-ra-mat-the-central.jpg');
INSERT INTO `blog_details` VALUES ('113', 114, 'Cơ hội sở hữu shophouse đẹp nhất cuối cùng tại Louis City Hoàng Mai', 'Louis City Hoàng Mai vừa cho ra mắt giỏ hàng những căn shophouse cuối cùng đẹp nhất dự án giai đoạn II, hứa hẹn thỏa mãn nhu cầu đầu tư của khách hàng đầu tư.', 'Cụ thể, Duy Tiên đã phê duyệt 6 dự án cơ sở hạ tầng giao thông khung với chiều dài gần 16 km, 2 dự án đang trình chấp thuận chủ trương. Ngoài các tuyến cao tốc hiện có, thị xã cũng đầu tư xây mới 1 số tuyến giao thông quan trọng: tuyến đường vành đai V vù', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1642821901-cenland-hoatienparadise-1-1.jpg');
INSERT INTO `blog_details` VALUES ('114', 115, 'Giải pháp giúp “gỡ rối” việc tra cứu giá bất động sản trên thị trường', 'Đối với giao dịch bất động sản, xác định giá luôn được xem yếu tố quan trọng hàng đầu. Tuy nhiên, đây là bài toán khó cho cả người mua và người bán, làm sao để không bị “mua hớ” hoặc “bán lỗ”.', 'người địa phương. Tỷ lệ lấp đầy các khu, cụm công nghiệp đạt tới mức 88%.\r\n\r\nKhông gian đô thị cũng được mở rộng thêm, dự kiến năm 2030 sẽ đạt khoảng 262.000 người.\r\n\r\nĐây chính là tiền đề mạnh mẽ cho bất động sản Duy Tiên khởi sắc, thu hút đầu tư, quy tụ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1641810634-cen-land-trinity-tower.jpg');
INSERT INTO `blog_details` VALUES ('115', 116, 'Lựa chọn nào để cân bằng giữa “sống gần trung tâm” và “sống xa ngột ngạt?', 'Những bộn bề, áp lực của cuộc sống khiến nhiều người mong muốn có được một tổ ấm xa rời ồn ào, khói bụi, nhưng vẫn phải gần trung tâm để tiện làm việc, học tập.\r\n', 'Đầu năm 2017, Công ty bắt đầu triển khai dự án khu đô thị Khai Sơn City - dự án đầu tay tại Thủ đô. Tọa lạc ngay giữa trung tâm quận Long Biên, Khai Sơn City như một thành phố thu nhỏ giữa lòng Hà Nội, với đầy đủ các tiện ích, đáp ứng toàn bộ nhu cầu khôn', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1641810635-cen-land-trinity-tower-3.jpg');
INSERT INTO `blog_details` VALUES ('116', 117, 'Khách hàng “săn” mua căn hộ BMG Hà Nội trước thời điểm bàn giao', 'Tiến độ hoàn thiện đúng cam kết, sắp bàn giao và đi vào hoạt động, khu căn hộ BMG Hà Nội (93 Đức Giang, Long Biên) đang gia tăng sức nóng.', 'Trải qua 28 năm xây dựng và phát triển, bằng tâm lực, trí lực và bản lĩnh, sức sáng tạo của tập thể cán bộ, nhân viên qua các thời kỳ, Công ty cổ phần Khai Sơn đã vươn lên phát triển mạnh mẽ không ngừng, luôn hướng tới mục tiêu xây dựng một Tập đoàn hùng ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1640916431-cen-land-the-sailing-quy-nhon.jpg');
INSERT INTO `blog_details` VALUES ('117', 118, 'Cenhomes.vn phân phối độc quyền dự án Kosy Lita Hà Nam tại Hà Nội', 'Với uy tín hàng đầu trên thị trường bất động sản, Cenhomes.vn tham gia ký kết hợp tác cùng Tập đoàn Kosy, trở thành đơn vị phân phối độc quyền.', 'Với các ưu thế về địa lý, tự nhiên, môi trường kinh tế và văn hoá, xã hội cũng như sự hỗ trợ của chính quyền địa phương, Duy Tiên đang mạnh mẽ vươn lên, trở thành điểm đến “sáng giá” cho các nhà đầu tư.\r\n\r\nNhững năm gần đây, thị xã Duy Tiên đang chú trọng', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1640916431-cen-land-the-sailing-quy-nhon-2.jpg');
INSERT INTO `blog_details` VALUES ('118', 119, 'Nhận nhà ở ngay tại căn hộ hàng hiệu do Savills quản lý vận hành', 'Không chỉ thu hút nhờ vị trí trung tâm quận Đống Đa cùng nhiều tiện ích đẳng cấp, hiện đại, Hateco Laroma của Hateco Group còn là dự án cao cấp được quản lý vận hành bởi Savills - đơn vị hàng đầu.', 'Nằm ở cửa ngõ phía Nam của Hà Nội, thị xã Duy Tiên được coi là đầu mối giao thông quan trọng, nơi có tuyến đường sắt Bắc - Nam, quốc lộ 1A, quốc lộ 38, kết nối giữa Hà Nội - Phủ Lý, Hưng Yên - Hà Nam… Bên cạnh đó còn có đường cao tốc Cầu Giẽ - Ninh Bình, ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1640072319-cen-land-the-sailing-quy-nhon-6.jpg');
INSERT INTO `blog_details` VALUES ('119', 120, 'Sức hút của The Central – Shophouse quy mô bậc nhất Sapa', 'Sapa những năm gần đây đang cho thấy sự thay đổi ngoạn mục cả về diện mạo cũng như chất lượng dịch vụ, xây dựng xứng tầm một “kinh đô nghỉ mát” của vùng đất Tây Bắc. ', 'Cụ thể, Duy Tiên đã phê duyệt 6 dự án cơ sở hạ tầng giao thông khung với chiều dài gần 16 km, 2 dự án đang trình chấp thuận chủ trương. Ngoài các tuyến cao tốc hiện có, thị xã cũng đầu tư xây mới 1 số tuyến giao thông quan trọng: tuyến đường vành đai V vù', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1640072323-cen-land-the-sailing-quy-nhon-2-3.jpg');
INSERT INTO `blog_details` VALUES ('120', 121, 'Chủ đầu tư Hoa Tiên Paradise hợp tác với Landmarks ', 'Sau khi “bắt tay” với Cen Land - đơn vị hàng đầu về phân phối bất động sản, chủ đầu tư Hoa Tiên Paradise tiếp tục hợp tác với công ty thiết kế cảnh quan nổi tiếng Landmarks.', 'Đầu năm 2017, Công ty bắt đầu triển khai dự án khu đô thị Khai Sơn City - dự án đầu tay tại Thủ đô. Tọa lạc ngay giữa trung tâm quận Long Biên, Khai Sơn City như một thành phố thu nhỏ giữa lòng Hà Nội, với đầy đủ các tiện ích, đáp ứng toàn bộ nhu cầu khôn', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/11/1668997117-z3897631641599cbad266ea7490eb45bc1f8eba9f2862b.jpg');
INSERT INTO `blog_details` VALUES ('121', 122, 'Công ty TNHH Thương mại NPG Việt Nam trao gửi yêu thương ', 'Công ty TNHH Thương mại NPG Việt Nam là doanh nghiệp chuyên sản xuất và kinh doanh các sản phẩm gạch ốp, gạch lát, gạch trang trí chất liệu Ceramic (Gạch men)/ Porcelain cao cấp. ', 'Đầu năm 2017, Công ty bắt đầu triển khai dự án khu đô thị Khai Sơn City - dự án đầu tay tại Thủ đô. Tọa lạc ngay giữa trung tâm quận Long Biên, Khai Sơn City như một thành phố thu nhỏ giữa lòng Hà Nội, với đầy đủ các tiện ích, đáp ứng toàn bộ nhu cầu khôn', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/11/1667900823-anh2-khaisoncity-colinh.jpg');
INSERT INTO `blog_details` VALUES ('122', 123, 'Cen Group trao tặng xe cứu thương cho Sở lao động thương binh Xã hội ', 'Đại diện Tập đoàn Cen Group đã trao tặng xe cứu thương cho Sở LĐTBXH tỉnh Quảng Nam. Đây là món quà rất ý nghĩa, giúp địa phương có thêm phương tiện vận chuyển bệnh nhân cấp cứu.', 'Trải qua 28 năm xây dựng và phát triển, bằng tâm lực, trí lực và bản lĩnh, sức sáng tạo của tập thể cán bộ, nhân viên qua các thời kỳ, Công ty cổ phần Khai Sơn đã vươn lên phát triển mạnh mẽ không ngừng, luôn hướng tới mục tiêu xây dựng một Tập đoàn hùng ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1639534858-hoa-tien-paradise-su-kien-2.jpg');
INSERT INTO `blog_details` VALUES ('123', 124, 'Cen Land và Hồng Lam Xuân Thành ký kết hợp tác đầu tư phát triển ', 'Sáng ngày 26/03/2022 tại Hà Nội, Công ty Cổ phần Bất động sản Thế Kỷ (Cen Land) và Công ty Cổ phần Hồng Lam Xuân Thành đã chính thức ký kết hợp tác đầu tư phát triển dự án Hoa Tiên Paradise. ', 'Với các ưu thế về địa lý, tự nhiên, môi trường kinh tế và văn hoá, xã hội cũng như sự hỗ trợ của chính quyền địa phương, Duy Tiên đang mạnh mẽ vươn lên, trở thành điểm đến “sáng giá” cho các nhà đầu tư.\r\n\r\nNhững năm gần đây, thị xã Duy Tiên đang chú trọng', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1639014843-cen-land-the-sailing-quy-nhon-1-2.jpg');
INSERT INTO `blog_details` VALUES ('124', 125, 'Kinh tế Hà Tĩnh và những con số “biết nói” đầy bất ngờ', 'Trái với hình dung của nhiều người về một vùng đất khó khăn, chỉ có gió Lào, thiên tai, Hà Tĩnh ngày càng “thay da đổi thịt” với những thành tựu ấn tượng về nhiều mặt. ', 'Nằm ở cửa ngõ phía Nam của Hà Nội, thị xã Duy Tiên được coi là đầu mối giao thông quan trọng, nơi có tuyến đường sắt Bắc - Nam, quốc lộ 1A, quốc lộ 38, kết nối giữa Hà Nội - Phủ Lý, Hưng Yên - Hà Nam… Bên cạnh đó còn có đường cao tốc Cầu Giẽ - Ninh Bình, ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1639014849-cen-land-the-sailing-quy-nhon-2-2.jpg');
INSERT INTO `blog_details` VALUES ('125', 126, 'Ra mắt nhà phố thương mại nằm tại trung tâm Sapa Jade Hill', 'Sở hữu vị trí trung tâm quần thể nghỉ dưỡng núi cao cấp bậc nhất Việt Nam – Sapa Jade Hill, nhà phố thương mại The Central hứa hẹn tạo nên một không gian giao thương đậm chất văn hóa Sapa.', 'Cụ thể, Duy Tiên đã phê duyệt 6 dự án cơ sở hạ tầng giao thông khung với chiều dài gần 16 km, 2 dự án đang trình chấp thuận chủ trương. Ngoài các tuyến cao tốc hiện có, thị xã cũng đầu tư xây mới 1 số tuyến giao thông quan trọng: tuyến đường vành đai V vù', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/12/1638418964-cen-land-the-sailing-quy-nhon.jpg');
INSERT INTO `blog_details` VALUES ('126', 127, 'Hoa Tiên Paradise sẵn sàng chào diện mạo mới', 'Sau thời gian dài bị “nén lại”, nhu cầu du lịch của người dân càng tăng cao. Vì vậy, một điểm đến mới lạ, đặc sắc thu hút khách du lịch.', 'người địa phương. Tỷ lệ lấp đầy các khu, cụm công nghiệp đạt tới mức 88%.\r\n\r\nKhông gian đô thị cũng được mở rộng thêm, dự kiến năm 2030 sẽ đạt khoảng 262.000 người.\r\n\r\nĐây chính là tiền đề mạnh mẽ cho bất động sản Duy Tiên khởi sắc, thu hút đầu tư, quy tụ', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/11/1637029068-sgcungdanthanhpho1-min.jpg');
INSERT INTO `blog_details` VALUES ('127', 128, 'Cen Land hợp tác cùng Vinahud – “mối duyên” đặc biệt.', 'Cen Land ký kết hợp tác chiến lược với Vinahud thu hút sự chú ý mạnh mẽ của thị trường. Không chỉ bởi tên tuổi của hai doanh nghiệp.', 'Đầu năm 2017, Công ty bắt đầu triển khai dự án khu đô thị Khai Sơn City - dự án đầu tay tại Thủ đô. Tọa lạc ngay giữa trung tâm quận Long Biên, Khai Sơn City như một thành phố thu nhỏ giữa lòng Hà Nội, với đầy đủ các tiện ích, đáp ứng toàn bộ nhu cầu khôn', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/11/1637027153-z2618195801854c58fc8bffd4ee73bb62665b4a6d5e643-1-1626527491431454758496.jpg');
INSERT INTO `blog_details` VALUES ('128', 129, 'Cen Land và Vinahud: Hợp tác chiến lược, kết nối thành công', 'Tại Hà Nội, lễ ký kết hợp tác chiến lược giữa Cen Land (CRE) và Vinahud (VHD) đã diễn ra thành công tốt đẹp.', 'Trải qua 28 năm xây dựng và phát triển, bằng tâm lực, trí lực và bản lĩnh, sức sáng tạo của tập thể cán bộ, nhân viên qua các thời kỳ, Công ty cổ phần Khai Sơn đã vươn lên phát triển mạnh mẽ không ngừng, luôn hướng tới mục tiêu xây dựng một Tập đoàn hùng ', 'https://blog.hoozing.vn/wp-content/uploads/2020/06/thi-truong-bat-dong-san-viet-nam-2020.jpg');
INSERT INTO `blog_details` VALUES ('129', 130, 'Bạn đã một lần chạm tới vẻ đẹp “không thể quên”', 'Sapa là một trong những địa điểm du lịch hấp dẫn nhất khu vực phía Bắc. Chúng ta vẫn biết đến Sapa với khung cảnh thiên nhiên hùng vĩ.', 'Với các ưu thế về địa lý, tự nhiên, môi trường kinh tế và văn hoá, xã hội cũng như sự hỗ trợ của chính quyền địa phương, Duy Tiên đang mạnh mẽ vươn lên, trở thành điểm đến “sáng giá” cho các nhà đầu tư.\r\n\r\nNhững năm gần đây, thị xã Duy Tiên đang chú trọng', 'https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2021/11/1636508799-rs-the-sailing-bay-1.jpg');

-- ----------------------------
-- Table structure for can_ho_trong
-- ----------------------------
DROP TABLE IF EXISTS `can_ho_trong`;
CREATE TABLE `can_ho_trong`  (
  `id_canho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_sophong` int(11) NULL DEFAULT NULL,
  `id_location` int(11) NULL DEFAULT NULL,
  `id_ctda` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_canho`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of can_ho_trong
-- ----------------------------
INSERT INTO `can_ho_trong` VALUES ('101', 'A101', 101, 1, 1001);
INSERT INTO `can_ho_trong` VALUES ('102', 'A102', 102, 2, 1002);
INSERT INTO `can_ho_trong` VALUES ('103', 'A103', 103, 3, 1003);
INSERT INTO `can_ho_trong` VALUES ('104', 'B104', 104, 1, 1004);
INSERT INTO `can_ho_trong` VALUES ('105', 'B105', 105, 1, 1005);
INSERT INTO `can_ho_trong` VALUES ('106', 'B106', 106, 2, 1006);
INSERT INTO `can_ho_trong` VALUES ('107', 'C107', 107, 3, 1007);
INSERT INTO `can_ho_trong` VALUES ('108', 'C108', 108, 3, 1008);
INSERT INTO `can_ho_trong` VALUES ('109', 'C109', 109, 2, 1009);
INSERT INTO `can_ho_trong` VALUES ('110', 'C110', 110, 1, 1010);
INSERT INTO `can_ho_trong` VALUES ('111', 'D111', 111, 2, 1011);
INSERT INTO `can_ho_trong` VALUES ('112', 'D112', 112, 3, 1012);
INSERT INTO `can_ho_trong` VALUES ('113', 'D113', 113, 2, 1013);
INSERT INTO `can_ho_trong` VALUES ('114', 'E114', 114, 1, 1014);
INSERT INTO `can_ho_trong` VALUES ('115', 'E115', 115, 2, 1015);
INSERT INTO `can_ho_trong` VALUES ('116', 'E116', 116, 3, 1016);
INSERT INTO `can_ho_trong` VALUES ('117', 'F117', 117, 2, 1017);
INSERT INTO `can_ho_trong` VALUES ('118', 'F118', 118, 1, 1018);
INSERT INTO `can_ho_trong` VALUES ('119', 'F119', 119, 2, 1019);
INSERT INTO `can_ho_trong` VALUES ('120', 'F120', 120, 3, 1020);

-- ----------------------------
-- Table structure for favorate
-- ----------------------------
DROP TABLE IF EXISTS `favorate`;
CREATE TABLE `favorate`  (
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_duan` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorate
-- ----------------------------

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id_ctda` int(11) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for image_blog
-- ----------------------------
DROP TABLE IF EXISTS `image_blog`;
CREATE TABLE `image_blog`  (
  `id_ctblog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_blog
-- ----------------------------

-- ----------------------------
-- Table structure for lich_hen
-- ----------------------------
DROP TABLE IF EXISTS `lich_hen`;
CREATE TABLE `lich_hen`  (
  `id_lichhen` int(11) NOT NULL AUTO_INCREMENT,
  `id_duan` int(11) NULL DEFAULT NULL,
  `id_sophong` int(11) NULL DEFAULT NULL,
  `id_vitri` int(11) NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `id_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `custommer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sex` tinyint(4) NULL DEFAULT NULL,
  `startFree` datetime NULL DEFAULT NULL,
  `endFree` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_lichhen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lich_hen
-- ----------------------------

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `id_location` int(11) NOT NULL AUTO_INCREMENT,
  `descrip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_location`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------

-- ----------------------------
-- Table structure for phanhoi
-- ----------------------------
DROP TABLE IF EXISTS `phanhoi`;
CREATE TABLE `phanhoi`  (
  `id_phanhoi` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_phanhoi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phanhoi
-- ----------------------------

-- ----------------------------
-- Table structure for properties
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties`  (
  `id_duan` int(11) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bestseller` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `soldout` tinyint(1) NULL DEFAULT NULL,
  `area` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `beginPrice` double NULL DEFAULT NULL,
  `endPrice` double NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `modified_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_duan`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES (1001, 'https://img.iproperty.com.my/my-iproperty/premium/750x435-fit/oz3j43ixlol_tc224bb12219-87ed-4b7e-9760-c6884dfa6153_960x980.jpeg', 'Akira City', 'Quận 1, Hồ Chí Minh', 0, 0, 32500, 'Chung Cư', 1.2, 4.5, '2023-01-03 21:27:45', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1002, 'https://lequangthanh.net/wp-content/uploads/2021/02/du-an-the-grand-manhattan.jpg', 'Green Diamond', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 0, 17800, 'Chung Cư', 1.6, 2.7, '2023-01-12 21:27:48', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1003, 'https://namphatriverside.vn/wp-content/uploads/2020/07/chung-c%C6%B0.jpg', 'Sunshine City', 'Quận Tân Bình, Hồ Chí Minh', 0, 0, 18800, 'Chung Cư', 1.8, 2.9, '2023-01-10 21:27:55', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1004, 'https://www.askdaniel.org/wp-content/uploads/2020/12/antares.jpg', 'The Sailing', 'Quận 1, Hồ Chí Minh', 0, 0, 22000, 'Chung Cư', 1.3, 4.5, '2023-01-23 21:27:52', '2023-01-23 21:27:52');
INSERT INTO `properties` VALUES (1005, 'https://media.tapchitaichinh.vn/w740/images/upload/hoangthuviet/01082020/1546423783621_1237033.jpg', 'Mizuki Park', 'Tây Hồ, Hà Nội', 1, 0, 10500, 'Chung Cư', 1.8, 5.6, '2023-01-21 21:27:58', '2023-01-21 21:27:58');
INSERT INTO `properties` VALUES (1006, 'https://static1.cafeland.vn/cafelandnew/hinh-anh/2020/05/09/Green-Diamond-Ha-Long.jpg?t=1', 'The Matrix One', 'Linh Trung, Thủ Đức', 1, 0, 12300, 'Chung Cư', 2.5, 3.5, '2023-01-04 21:28:01', '2023-01-04 21:28:01');
INSERT INTO `properties` VALUES (1007, 'https://canhomizuki.vn/wp-content/uploads/2022/04/Flora-Panorama2-3-riverview-300x168.jpg', 'imgĐang Bán\r\nEco Dream', 'Quận 4, Hồ Chí Minh', 1, 0, 15750, 'Chung Cư', 7.8, 10.2, '2023-01-04 21:28:04', '2023-01-04 21:28:04');
INSERT INTO `properties` VALUES (1008, 'https://sunshinegroup.vn/wp-content/uploads/2019/05/city-ss-300x168.jpg', 'Lavita Charm', 'Dĩ An, Bình Dương', 1, 0, 32500, 'Chung Cư', 3.4, 5.3, '2022-12-13 21:28:08', '2022-12-13 21:28:08');
INSERT INTO `properties` VALUES (1009, 'https://i.imgur.com/vplHKqe.jpg', 'Sky Central', 'Quận 1, Hồ Chí Minh', 1, 0, 17800, 'Chung Cư', 3.6, 6.7, '2023-01-16 21:28:12', '2023-01-16 21:28:12');
INSERT INTO `properties` VALUES (1010, 'https://namphatriverside.vn/wp-content/uploads/2020/05/The-terra-an-hung.jpg', 'Metro Star\r\n', 'Quận Tân Bình, Hồ Chí Minh', 0, 0, 18800, 'Chung Cư', 7.9, 8.2, '2023-01-13 21:28:16', '2023-01-13 21:28:16');
INSERT INTO `properties` VALUES (1011, 'https://bandovietnam.com.vn/media/photo/s/o54-709635.jpg', 'Le Grand Jardin', 'Dĩ An, Bình Dương', 0, 0, 22000, 'Chung Cư', 8.8, 12.5, '2022-12-12 21:28:19', '2022-12-12 21:28:19');
INSERT INTO `properties` VALUES (1012, 'https://pihome.asia/storage/images/general/812x400-1608704206-phoi-canh-eurowindow-river-park-canh-xe-chieu.jpg', 'C-Sky View', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 0, 10500, 'Chung Cư', 1.2, 4.5, '2022-12-19 21:28:27', '2022-12-19 21:28:27');
INSERT INTO `properties` VALUES (1013, 'https://jackby.com/xmedia/2019/12/phoi-canh-vinhomes-west-point-do-duc-duc-1024x566.jpg', 'Hoàng Huy Commerce', 'Bà Rịa - Vũng Tàu', 1, 0, 12300, 'Chung Cư', 1.6, 2.7, '2022-12-12 21:28:33', '2022-12-12 21:28:33');
INSERT INTO `properties` VALUES (1014, 'https://danhkhoireal.vn/wp-content/uploads/2021/01/Eurowindow-River-Park-768x528.jpg.webp', 'Chung cư Khai Sơn City', 'Đống Đa, Hà Nội', 0, 0, 15750, 'Chung Cư', 1.8, 2.9, '2022-12-13 21:28:38', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1015, 'https://vietnamhouse.jp/upload/condo/498/millenniummasteri1467992336-fd0353f3fe-(675x450-crop).jpg', 'Chung cư Khai Sơn City', 'Quận 4, Hồ Chí Minh', 1, 0, 32500, 'Chung Cư', 1.3, 4.5, '2022-12-23 21:28:43', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1016, 'https://file4.batdongsan.com.vn/2018/12/20/hmcVYWuR/20181220100538-86ab.jpg', 'Hạ Long Flowers', 'Quận Tân Bình, Hồ Chí Minh', 1, 0, 17800, 'Chung Cư', 1.8, 5.6, '2022-12-30 21:28:50', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1017, 'https://wp-assets.dotproperty-kh.com/wp-content/uploads/sites/7/2018/10/02150547/La-Cosmo-Residences-2-696x392.jpg', 'Berriver Jardin', 'Quận 4, Hồ Chí Minh', 0, 1, 18800, 'Chung Cư', 2.5, 3.5, '2022-12-18 21:28:55', '2023-01-23 21:27:52');
INSERT INTO `properties` VALUES (1018, 'https://vinhomescorp.vn/wp-content/uploads/2019/04/tam-nhin-khu-park-vinhomes-ocean-park2.jpg', 'Green Little Town', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 0, 22000, 'Chung Cư', 7.8, 10.2, '2023-01-03 21:27:45', '2023-01-21 21:27:58');
INSERT INTO `properties` VALUES (1019, 'https://bizweb.dktcdn.net/100/421/663/files/vhop-pv-139-sp1-s1-1-2-3.jpg?v=1618829301927', 'Dragon Ocean Đồ Sơn', 'Linh Trung, Thủ Đức', 1, 0, 10500, 'Chung Cư', 3.4, 5.3, '2023-01-12 21:27:48', '2023-01-04 21:28:01');
INSERT INTO `properties` VALUES (1020, 'https://photo.rever.vn/v3/get/2vFufQRTtvliSX1Knlkf6T9e+8Q3kSqM_HqoAJ4P_WQ=/900x600/image.jpg', 'Trinity Tower', 'Quận 7, Hồ Chí Minh', 0, 0, 12300, 'Chung Cư', 3.6, 6.7, '2023-01-10 21:27:55', '2023-01-04 21:28:04');
INSERT INTO `properties` VALUES (1021, 'https://ngoquocdung.com/wp-content/uploads/2020/05/Thiet-ke-can-ho-vinhomes-smart-city-ngoquocdung.com_.jpg', 'C-Sky View', 'Quận 7, Hồ Chí Minh', 1, 0, 15750, 'Chung Cư', 7.9, 8.2, '2023-01-23 21:27:52', '2022-12-13 21:28:08');
INSERT INTO `properties` VALUES (1022, 'https://photo.rever.vn/v3/get/E_NB2c433mHakJSwqaq2zB3PcAyjcTqK67hi7gISTRI=/900x600/image.jpg', 'Vinhomes Smart City', 'Đống Đa, Hà Nội', 1, 0, 32500, 'Chung Cư', 1.2, 4.5, '2023-01-21 21:27:58', '2023-01-16 21:28:12');
INSERT INTO `properties` VALUES (1023, 'https://cdnimg.vietnamplus.vn/t1200/Uploaded/hmnsy/2019_05_24/Anh_2.jpg', 'Imperia Smart City\r\n', 'Tây Hồ, Hà Nội', 1, 1, 17800, 'Chung Cư', 1.6, 2.7, '2023-01-04 21:28:01', '2023-01-13 21:28:16');
INSERT INTO `properties` VALUES (1024, 'https://chungcudep.net/wp-content/uploads/2021/01/phoi-canh-chung-cu-green-diamond-93-lang-ha.jpg', 'Feliz Homes\r\nHoàng Mai, Hà ', 'Dĩ An, Bình Dương', 1, 0, 18800, 'Chung Cư', 1.8, 2.9, '2023-01-04 21:28:04', '2022-12-12 21:28:19');
INSERT INTO `properties` VALUES (1025, 'https://datxanhvietnam.com.vn/wp-content/uploads/2020/03/hinh-anh-tong-quan-vinhomes-smart-city.jpg', 'C-River View', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 1, 22000, 'Chung Cư', 1.3, 4.5, '2022-12-13 21:28:08', '2022-12-19 21:28:27');
INSERT INTO `properties` VALUES (1026, 'https://timescityminhkhai.com/wp-content/uploads/sites/7/2019/12/chung-cu-vinhome-smart-city-dai-mo.jpg', 'Thanh Long Bay', 'Thủ Dầu Một, Bình Dương', 1, 1, 10500, 'Chung Cư', 1.8, 5.6, '2023-01-16 21:28:12', '2022-12-12 21:28:33');
INSERT INTO `properties` VALUES (1027, 'https://phaleplastics.com.vn/wp-content/uploads/2020/08/tong-the-2-cr.png', 'Ruby Holding', 'Quận 1, Hồ Chí Minh', 1, 0, 12300, 'Chung Cư', 2.5, 3.5, '2023-01-13 21:28:16', '2022-12-13 21:28:38');
INSERT INTO `properties` VALUES (1028, 'https://kinhdoanhdiaoc.net/wp-content/uploads/2020/06/the-rainbow-vinhomes-grand-park-quan-9.jpg', 'Sunshine Golden River', 'Quận 7, Hồ Chí Minh', 1, 0, 15750, 'Chung Cư', 7.8, 10.2, '2022-12-12 21:28:19', '2022-12-23 21:28:43');
INSERT INTO `properties` VALUES (1029, 'https://1.bp.blogspot.com/-tY6x4QTwAcM/WlBAA2T42eI/AAAAAAAAAKo/R0lTY-OQzhox74nzpgTlGPFL7pYh7qrsgCLcBGAs/s1600/canh-quan-vinhomes-galaxy.jpg', 'Phúc Hưng Golden', 'Thủ Dầu Một, Bình Dương', 0, 1, 32500, 'Chung Cư', 3.4, 5.3, '2022-12-19 21:28:27', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1030, 'https://vinhomescorp.vn/wp-content/uploads/2018/02/tong-the-vinhomes-galaxy.jpg.webp', 'Epic Tower', 'Quận Tân Bình, Hồ Chí Minh', 1, 1, 17800, 'Chung Cư', 3.6, 6.7, '2022-12-12 21:28:33', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1031, 'https://kinhdoanhdiaoc.net/wp-content/uploads/2020/06/the-rainbow-vinhomes-grand-park-quan-9.jpg', 'Chung cư Bình Minh Garden', 'Thủ Dầu Một, Bình Dương', 0, 1, 18800, 'Chung Cư', 7.9, 8.2, '2022-12-13 21:28:38', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1032, 'https://haiphonghomes.vn/images/image/chung-cu-vincity-hai-phong5.jpg', 'Grand Mercure Hội An', 'Tây Hồ, Hà Nội', 1, 0, 22000, 'Chung Cư', 8.8, 12.5, '2022-12-23 21:28:43', '2023-01-23 21:27:52');
INSERT INTO `properties` VALUES (1033, 'https://vinhomecitys.com/wp-content/uploads/2018/10/khu-ca-n-ho-the-light-vincity-grand-park-qua-n-9-cu-a-vinhome-vingroup.jpg', 'The Manor Central Park', 'Quận 1, Hồ Chí Minh', 1, 0, 10500, 'Chung Cư', 1.2, 4.5, '2022-12-30 21:28:50', '2023-01-21 21:27:58');
INSERT INTO `properties` VALUES (1034, 'https://voa-production.s3.amazonaws.com/uploads/housing_property_image/image/393/Hope_Manor.jpg', 'Kiến Hưng Luxury', 'Bà Rịa - Vũng Tàu', 1, 0, 12300, 'Chung Cư', 1.6, 2.7, '2023-01-03 21:27:45', '2023-01-04 21:28:01');
INSERT INTO `properties` VALUES (1035, 'https://luxyhome.com.vn/wp-content/uploads/Green-Diamond-Ha-Long.jpg', 'A La Carte Ha Long Bay', 'Dĩ An, Bình Dương', 1, 0, 15750, 'Chung Cư', 1.8, 2.9, '2023-01-12 21:27:48', '2023-01-04 21:28:04');
INSERT INTO `properties` VALUES (1036, 'https://www.huduser.gov/portal/sites/default/files/pdredge/Edge-IP-interior-011122.jpg', 'The 6Nature Đà Nẵng', 'Đống Đa, Hà Nội', 0, 0, 32500, 'Chung Cư', 1.3, 4.5, '2023-01-10 21:27:55', '2022-12-13 21:28:08');
INSERT INTO `properties` VALUES (1037, 'https://www.vinhomeland.com.vn/wp-content/uploads/2020/12/vinhomes-central-park.jpg', 'Cam Ranh Bay', 'Quận 1, Hồ Chí Minh', 1, 0, 17800, 'Chung Cư', 1.8, 5.6, '2023-01-23 21:27:52', '2023-01-16 21:28:12');
INSERT INTO `properties` VALUES (1038, 'https://storage.googleapis.com/digital-platform/hinh_anh_the_rainbow_vinhomes_grand_park_gia_ban_va_chinh_sach_uu_dai_so_6_ece579a17c/hinh_anh_the_rainbow_vinhomes_grand_park_gia_ban_va_chinh_sach_uu_dai_so_6_ece579a17c.jpg', 'BRG Diamond Residence', 'Linh Trung, Thủ Đức', 1, 0, 18800, 'Chung Cư', 2.5, 3.5, '2023-01-21 21:27:58', '2023-01-13 21:28:16');
INSERT INTO `properties` VALUES (1039, 'https://besthometownnews.com/wp-content/uploads/2019/02/Housing-Apartments.jpg', 'Masteri West Heights\r\n', 'Tiểu Cần, Trà Vinh', 1, 1, 22000, 'Chung Cư', 7.8, 10.2, '2023-01-04 21:28:01', '2022-12-12 21:28:19');
INSERT INTO `properties` VALUES (1040, 'https://sofoyou.com/wp-content/uploads/2020/02/vinhomes-grand-park-q9.jpg', 'Sunshine Center', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 1, 10500, 'Chung Cư', 1.2, 4.5, '2023-01-04 21:28:04', '2022-12-19 21:28:27');
INSERT INTO `properties` VALUES (1041, 'https://chungcuhn24h.net/wp-content/uploads/2020/11/green-diamond-lang-ha-3.jpg', 'Vinhomes Grand Park', 'Tây Hồ, Hà Nội', 0, 0, 12300, 'Chung Cư', 1.6, 2.7, '2022-12-13 21:28:08', '2022-12-12 21:28:33');
INSERT INTO `properties` VALUES (1042, 'https://www.kxnet.com/wp-content/uploads/sites/16/2021/10/thumbnail_Minot-Affordable-Housing.png?w=1280', 'Lumiere boulevard', 'Quận 7, Hồ Chí Minh', 1, 0, 15750, 'Chung Cư', 1.8, 2.9, '2023-01-16 21:28:12', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1043, 'https://www.surreynowleader.com/wp-content/uploads/2019/07/17663086_web1_190704-SUL-Rental-building-Options.jpg', 'The Global City', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 0, 32500, 'Chung Cư', 1.3, 4.5, '2023-01-13 21:28:16', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1044, 'https://img.iproperty.com.my/my-iproperty/premium/750x435-fit/oz3j43ixlol_tc224bb12219-87ed-4b7e-9760-c6884dfa6153_960x980.jpeg', 'King Crown Infinity', 'Đống Đa, Hà Nội', 1, 0, 17800, 'Chung Cư', 1.8, 5.6, '2022-12-12 21:28:19', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1045, 'https://cdn-res.keymedia.com/cms/images/ca/155/0348_637147718605289651.jpg', 'An Phú Eco City', 'Thủ Dầu Một, Bình Dương', 0, 0, 18800, 'Chung Cư', 2.5, 3.5, '2022-12-19 21:28:27', '2023-01-23 21:27:52');
INSERT INTO `properties` VALUES (1046, 'https://cityapartment.com.vn/wp-content/uploads/2020/05/tien-do-vinhomes-03.jpg', 'Happy One Central', 'Quận 9, Hồ Chí Minh', 1, 0, 22000, 'Chung Cư', 7.8, 10.2, '2022-12-12 21:28:33', '2023-01-21 21:27:58');
INSERT INTO `properties` VALUES (1047, 'https://s3.amazonaws.com/lws_lift/cressey/images/gallery/768/1442862536_neon_view_1.jpg', 'Dự án Diamond City', 'Quận Tân Bình, Hồ Chí Minh', 1, 0, 10500, 'Chung Cư', 3.4, 5.3, '2022-12-13 21:28:38', '2023-01-04 21:28:01');
INSERT INTO `properties` VALUES (1048, 'https://costar.brightspotcdn.com/32/b2/03be0e7f420fb238b86018f796b8/breaking.jpg', 'Sunshine Garden', 'Quận 1, Hồ Chí Minh', 1, 1, 12300, 'Chung Cư', 3.6, 6.7, '2022-12-23 21:28:43', '2023-01-04 21:28:04');
INSERT INTO `properties` VALUES (1049, 'https://freshbangkok.com/wp-content/uploads/2021/10/Life-Rama4-Asoke-bkk-Building-480x315.jpg', 'Vinhomes Ocean Park\r\n\r\n\r\n', 'Bà Rịa - Vũng Tàu', 1, 0, 15750, 'Chung Cư', 7.9, 8.2, '2022-12-30 21:28:50', '2022-12-13 21:28:08');
INSERT INTO `properties` VALUES (1050, 'https://www.sansiri.com/uploads/news/2017/08/11/650_396f65d2-dd80-4c69-a891-713b4411eb4a.jpg', 'Mailand Hoàng Đồng ', 'Đống Đa, Hà Nội', 1, 0, 32500, 'Chung Cư', 8.8, 12.5, '2023-01-03 21:27:45', '2023-01-16 21:28:12');
INSERT INTO `properties` VALUES (1051, 'https://www.sansiri.com/uploads/news/2018/09/11/650_a4e7d273-2d15-49fd-b5d3-4ac25702a513.jpg', 'Casamia Hội An', 'Tây Hồ, Hà Nội', 1, 0, 17800, 'Chung Cư', 1.2, 4.5, '2023-01-12 21:27:48', '2023-01-13 21:28:16');
INSERT INTO `properties` VALUES (1052, 'https://www.companyvauban.com/wp-content/uploads/2019/05/BA-C457-1bdr-1-2.jpg', 'Eco Lake View', 'Thủ Dầu Một, Bình Dương', 1, 0, 18800, 'Chung Cư', 1.6, 2.7, '2023-01-10 21:27:55', '2022-12-12 21:28:19');
INSERT INTO `properties` VALUES (1053, 'https://my2-cdn.pgimgs.com/listing/35378920/UPHO.187732173.V800/%E3%80%90Greenery-Environment%E3%80%91Hilltop-Bungalow-Condo-0-Downpayment-Super-Low-Density-Mont-Kiara-Malaysia.jpg', 'Bình Minh Garden', 'Quy Nhơn, Bình Định', 1, 0, 22000, 'Chung Cư', 1.8, 2.9, '2023-01-23 21:27:52', '2022-12-19 21:28:27');
INSERT INTO `properties` VALUES (1054, 'https://photosrp.dotproperty.com.my/2.0-MY-1779024-PP-5995141-1608511035fc8dbfd5bbcc-1-1200-630-ct/4-bedroom-condo-for-sale-in-solaris-mont-kiara-kuala-lumpur.jpg', 'Novaworld Phan Thiết', 'Châu Thành, Trà Vinh', 1, 1, 10500, 'Chung Cư', 1.3, 4.5, '2023-01-21 21:27:58', '2022-12-12 21:28:33');
INSERT INTO `properties` VALUES (1055, 'http://cdn.reatimes.vn/mediav2/media_old/upload/RNyNCf85pvmMArDPs0HPdw/files/2020/07/0907/du%20an%20nha%20o.jpg', 'Green Bay Garden', 'Đống Đa, Hà Nội', 1, 0, 12300, 'Chung Cư', 1.8, 5.6, '2023-01-04 21:28:01', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1056, 'https://file1.dangcongsan.vn/data/0/images/2020/12/25/quanht/picture2.jpg?dpi=150&quality=100&w=680', 'Park Hill Thành Công', 'Quận Tân Bình, Hồ Chí Minh', 1, 1, 15750, 'Chung Cư', 2.5, 3.5, '2023-01-04 21:28:04', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1057, 'https://www.retalkasia.com/sites/default/files/styles/article-full/public/niche_mono_tiwanon_0.jpg?itok=JXg73mt-', 'The Sun Mễ Trì', 'Ba Tri, Bến Tre', 1, 1, 32500, 'Chung Cư', 1.2, 4.5, '2022-12-13 21:28:08', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1058, 'https://www.hqa.com.vn/img_data/images/xe/hinh-1.jpg', 'STC Long Thành Đồng Nai', 'Quy Nhơn, Bình Định', 1, 0, 32500, 'Chung Cư', 1.6, 2.7, '2023-01-16 21:28:12', '2023-01-23 21:27:52');
INSERT INTO `properties` VALUES (1059, 'https://namphatriverside.vn/wp-content/uploads/2022/04/feliz-homes.jpg', 'Căn hộ mặt biển Asiana', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 0, 17800, 'Chung Cư', 1.8, 2.9, '2023-01-13 21:28:16', '2023-01-21 21:27:58');
INSERT INTO `properties` VALUES (1060, 'https://ngocphuongdong.com/wp-content/uploads/2022/04/vinhomes-the-beverly-solari-phoi-canh.jpg', 'Kỳ Co Gateway', 'Tây Hồ, Hà Nội', 1, 0, 18800, 'Chung Cư', 1.3, 4.5, '2022-12-12 21:28:19', '2023-01-04 21:28:01');
INSERT INTO `properties` VALUES (1061, 'https://vcdn1-kinhdoanh.vnecdn.net/2022/03/21/C30C89E95C0FFB62E851FAFF2A84E1-7304-7130-1647834240.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=2n3z9xcmSdbVfMwx4FRxEA', 'Ivory Villas & Resort Hòa Bình', 'Đống Đa, Hà Nội', 0, 0, 22000, 'Chung Cư', 1.8, 5.6, '2023-01-03 21:27:45', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1062, 'https://sohanews.sohacdn.com/thumb_w/660/160588918557773824/2022/10/15/photo1665812792438-166581279253590956292.jpg', 'Times Garden Vĩnh Yên', 'Linh Trung, Thủ Đức', 1, 0, 10500, 'Chung Cư', 2.5, 3.5, '2023-01-12 21:27:48', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1063, 'https://cdn.onehousing.vn/transaction-media/RdRRMkNsXoYyiAkeNgYoNNarRYvrmo.jpeg', 'Diamond Square Bồng Sơn', 'Bà Rịa - Vũng Tàu', 1, 0, 12300, 'Chung Cư', 7.8, 10.2, '2023-01-10 21:27:55', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1064, 'https://vcdn1-kinhdoanh.vnecdn.net/2021/06/24/961-1624329310-1759-1624513405.png?w=0&h=0&q=100&dpr=2&fit=crop&s=kZ_gtQAGyq0aJ0uhZNWvZA', 'The Terra An Hưng', 'Châu Thành, Trà Vinh', 1, 0, 15750, 'Chung Cư', 3.4, 5.3, '2023-01-23 21:27:52', '2023-01-23 21:27:52');
INSERT INTO `properties` VALUES (1065, 'https://cdn.onehousing.vn/transaction-media/XTSbTaVFSIgLEXaOlCUCbFoPQaAEWY.jpg', 'Millennium', 'Quận 1, Hồ Chí Minh', 1, 0, 32500, 'Chung Cư', 3.6, 6.7, '2023-01-21 21:27:58', '2023-01-21 21:27:58');
INSERT INTO `properties` VALUES (1066, 'https://cafefcdn.com/thumb_w/650/203337114487263232/2022/6/11/photo1654905958971-16549059591721252336944.jpg', 'Dream Center Home', 'Quy Nhơn, Bình Định', 0, 0, 17800, 'Chung Cư', 7.9, 8.2, '2023-01-04 21:28:01', '2023-01-04 21:28:01');
INSERT INTO `properties` VALUES (1067, 'https://thethaiger.com/wp-content/uploads/2019/03/NicheMONOSukhumvit50.jpg', 'Gold Season', 'Châu Thành, Trà Vinh', 1, 1, 18800, 'Chung Cư', 8.8, 12.5, '2023-01-04 21:28:04', '2023-01-04 21:28:04');
INSERT INTO `properties` VALUES (1068, 'https://namphatriverside.vn/wp-content/uploads/2022/04/feliz-homes.jpg', 'Goldora Plaza Nhà Bè', 'Quận Tân Bình, Hồ Chí Minh', 1, 0, 22000, 'Chung Cư', 1.2, 4.5, '2022-12-13 21:28:08', '2022-12-13 21:28:08');
INSERT INTO `properties` VALUES (1069, 'https://masterisehomes.com/masteri-waterfront/storage/media/2cjC14cHqV3UqwRrqUlcvFL9f8DkiwtKAu99lB0j.png', 'Anland Premium', 'Quận 12, Hồ Chí Minh', 1, 0, 10500, 'Chung Cư', 1.6, 2.7, '2023-01-16 21:28:12', '2023-01-16 21:28:12');
INSERT INTO `properties` VALUES (1070, 'https://masterisehomes.com/masteri-waterfront/storage/media/7shPepom363rZjZClPhjhRuDSzFUdtgOthtdYhG7.jpeg', 'Khu đô thị Vườn Sen', 'Quy Nhơn, Bình Định', 0, 0, 12300, 'Chung Cư', 1.8, 2.9, '2023-01-13 21:28:16', '2023-01-13 21:28:16');
INSERT INTO `properties` VALUES (1071, 'https://www.vinhomeland.com.vn/wp-content/uploads/2020/04/vinhomes-grand-park-9.jpg', 'The Grand Hà Nội', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 0, 15750, 'Chung Cư', 1.3, 4.5, '2022-12-12 21:28:19', '2022-12-12 21:28:19');
INSERT INTO `properties` VALUES (1072, 'https://e-images.juwaistatic.com/content-site/2021/08/16032104/shutterstock_1572907342-scaled.jpg', 'Mỹ Sơn Tower', 'Linh Trung, Thủ Đức', 1, 1, 32500, 'Chung Cư', 1.8, 5.6, '2022-12-19 21:28:27', '2022-12-19 21:28:27');
INSERT INTO `properties` VALUES (1073, 'https://cdn.onehousing.vn/transaction-media/ecYNgPcxSkpsXUNWsVvNFZLaOnoGqr.jpg', 'KVG The Capella', 'Bà Rịa - Vũng Tàu', 1, 0, 17800, 'Chung Cư', 2.5, 3.5, '2022-12-12 21:28:33', '2022-12-12 21:28:33');
INSERT INTO `properties` VALUES (1074, 'https://masteriwaterfrontoceanpark.com/wp-content/uploads/2020/10/masteri-waterfront-800x321.jpg', 'West Intela', 'Tây Hồ, Hà Nội', 0, 0, 18800, 'Chung Cư', 1.2, 4.5, '2022-12-13 21:28:38', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1075, 'https://chungcudep.net/wp-content/uploads/2018/07/phoi-canh-1-du-an-vincity-ocean-park-gia-lam.jpg', 'Viet Duc Complex', 'Linh Trung, Thủ Đức', 1, 0, 22000, 'Chung Cư', 1.6, 2.7, '2022-12-23 21:28:43', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1076, 'https://masterisehangbai.vn/wp-content/uploads/2021/07/masteri-waterfront-ban-dem.jpg', 'Feni City Hạ Long', 'Quận 12, Hồ Chí Minh', 1, 0, 10500, 'Chung Cư', 1.8, 2.9, '2023-01-03 21:27:45', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1077, 'https://cenhanoi.vn/mediacenter/media/1456/images/khu-sapphire-vinhomes-ocean-park-duoc-chia-thanh-2-phan-khu-nho-la-sapphire-1-va-2.jpg', 'Feni City Hạ Long', 'Quận 12, Hồ Chí Minh', 1, 0, 32500, 'Chung Cư', 1.3, 4.5, '2023-01-12 21:27:48', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1078, 'https://imperiaskygarden.ancu.com/wp-content/uploads/sites/66/2020/04/vinhomes-grand-park-4.jpg', 'The Tresor Residence', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 1, 17800, 'Chung Cư', 1.8, 5.6, '2023-01-10 21:27:55', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1079, 'https://goldenlands.vn/wp-content/uploads/2021/06/vinhome-grand.png', 'Lovera Vista', 'Đống Đa, Hà Nội', 0, 0, 18800, 'Chung Cư', 2.5, 3.5, '2023-01-23 21:27:52', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1080, 'https://timescityminhkhai.com/wp-content/uploads/sites/7/2021/10/tie%CC%A3%CC%82n-i%CC%81ch-du%CC%9B%CC%A3-a%CC%81n-vinhomes-qua%CC%A3%CC%82n-9.jpeg', 'Đông Tăng Long An Lộc\r\n\r\n', 'Bà Rịa - Vũng Tàu', 1, 0, 22000, 'Chung Cư', 7.8, 10.2, '2023-01-21 21:27:58', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1081, 'https://vinhome-grand-park.vn/wp-content/uploads/2022/06/picture-1-1656397618-727-width880height676.jpg', 'Xuân Mai Complex', 'Quận 1, Hồ Chí Minh', 1, 0, 10500, 'Chung Cư', 3.4, 5.3, '2023-01-04 21:28:01', '2023-01-23 21:27:52');
INSERT INTO `properties` VALUES (1082, 'https://d1kurvztuo3cyi.cloudfront.net/1280/Project/1047/hoozing-0cf033b7-23ad-48ee-826f-2867464dce32.jpg', 'Startup Tower', 'Quận 12, Hồ Chí Minh', 1, 0, 12300, 'Chung Cư', 3.6, 6.7, '2023-01-04 21:28:04', '2023-01-21 21:27:58');
INSERT INTO `properties` VALUES (1084, 'https://vinhomescorp.vn/wp-content/uploads/2019/04/tam-nhin-khu-park-vinhomes-ocean-park2.jpg', 'Phố Nối House', 'Tây Hồ, Hà Nội', 1, 1, 15750, 'Chung Cư', 7.9, 8.2, '2022-12-13 21:28:08', '2023-01-04 21:28:01');
INSERT INTO `properties` VALUES (1085, 'https://timeland.vn/upload/attachment/7237vinhomes-royal-city-background.jpg', 'Thuận An Central', 'Đống Đa, Hà Nội', 0, 1, 32500, 'Chung Cư', 8.8, 12.5, '2023-01-16 21:28:12', '2023-01-04 21:28:04');
INSERT INTO `properties` VALUES (1086, 'https://dongdolandvn.com/wp-content/uploads/2021/05/vinhomes-galaxy-nguyen-trai1.jpg', 'Monarchy Đà Nẵng', 'Quận 10, Hồ Chí Minh', 1, 0, 17800, 'Chung Cư', 1.2, 4.5, '2023-01-13 21:28:16', '2022-12-13 21:28:08');
INSERT INTO `properties` VALUES (1087, 'https://vinhomescorp.vn/wp-content/uploads/2016/09/phoi-canh-vinhomes-cao-xa-la.jpg', 'Samsora Riverside', 'Quận Tân Bình, Hồ Chí Minh', 1, 0, 18800, 'Chung Cư', 1.6, 2.7, '2022-12-12 21:28:19', '2023-01-16 21:28:12');
INSERT INTO `properties` VALUES (1088, 'https://duandep.vn/wp-content/uploads/2021/04/vinhomes-cao-xa-la-1.png', 'Five Star Mỹ Đình', 'Tây Hồ, Hà Nội', 1, 0, 22000, 'Chung Cư', 1.8, 2.9, '2022-12-19 21:28:27', '2023-01-13 21:28:16');
INSERT INTO `properties` VALUES (1089, 'https://batdongsanexpress.vn/upload/2021/05/chung-cu-vincity1.jpg', 'Vinhomes Riverside', 'Quận Bình Thạnh, Hồ Chí Minh', 1, 0, 10500, 'Chung Cư', 1.3, 4.5, '2022-12-12 21:28:33', '2022-12-12 21:28:19');
INSERT INTO `properties` VALUES (1090, 'https://blog.rever.vn/hubfs/TiendoEcoGreenSaigon8-1.jpg', 'The Harmony\r\n', 'Tiểu Cần, Trà Vinh', 0, 0, 12300, 'Chung Cư', 1.8, 5.6, '2023-01-03 21:27:45', '2022-12-19 21:28:27');
INSERT INTO `properties` VALUES (1091, 'https://www.vinhomeland.com.vn/wp-content/uploads/2020/04/vinhomes-grand-park-3.jpg', 'Ocean View Manor', 'Đống Đa, Hà Nội', 1, 0, 15750, 'Chung Cư', 1.2, 4.5, '2023-01-12 21:27:48', '2022-12-12 21:28:33');
INSERT INTO `properties` VALUES (1092, 'https://tiendoduan.com.vn/wp-content/uploads/2022/03/DJI_0514.jpg', 'Vinhomes Marina Villas', 'Tiểu Cần, Trà Vinh', 1, 0, 32500, 'Chung Cư', 1.6, 2.7, '2023-01-10 21:27:55', '2023-01-03 21:27:45');
INSERT INTO `properties` VALUES (1093, 'https://tiendoduan.com.vn/wp-content/uploads/2022/03/DJI_0526.jpg', 'Pandora Tower', 'Tiểu Cần, Trà Vinh', 1, 0, 17800, 'Chung Cư', 1.8, 2.9, '2023-01-23 21:27:52', '2023-01-12 21:27:48');
INSERT INTO `properties` VALUES (1094, 'https://vcdn1-kinhdoanh.vnecdn.net/2022/05/23/Anh-2-1-4843-1653281219.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=NVI4I8voNa_HDtONxjsARQ', 'Viwaseen Tower', 'Quận Bình Thạnh, Hồ Chí Minh', 0, 0, 18800, 'Chung Cư', 1.3, 4.5, '2023-01-21 21:27:58', '2023-01-10 21:27:55');
INSERT INTO `properties` VALUES (1095, 'https://www.pureland.vn/wp-content/uploads/2018/08/mat-bang-tong-quan-2-1024x533.jpg', 'Park Riverside Premium', 'Linh Trung, Thủ Đức', 1, 0, 22000, 'Chung Cư', 1.8, 5.6, '2023-01-04 21:28:01', '2023-01-23 21:27:52');
INSERT INTO `properties` VALUES (1096, 'https://img.homedy.com/store/images/2020/04/23/phoi-canh-green-diamond-halong-637232413049557687.png', 'Quang Minh Green City', 'Quận 1, Hồ Chí Minh', 1, 1, 10500, 'Chung Cư', 2.5, 3.5, '2023-01-04 21:28:04', '2023-01-21 21:27:58');
INSERT INTO `properties` VALUES (1097, 'https://angialand.com.vn/wp-content/uploads/2019/11/tong-the-du-an-eco-green-saigon.jpg', 'Bảo Sơn Green Pearl', 'Tây Hồ, Hà Nội', 1, 0, 12300, 'Chung Cư', 7.8, 10.2, '2022-12-13 21:28:08', '2023-01-04 21:28:01');
INSERT INTO `properties` VALUES (1098, 'https://batdongsanexpress.vn/upload/2021/05/can-ho-vincity1.jpg', 'Sakana Resort', 'Bà Rịa - Vũng Tàu', 0, 0, 15750, 'Chung Cư', 3.4, 5.3, '2023-01-16 21:28:12', '2023-01-13 21:28:16');
INSERT INTO `properties` VALUES (1099, 'https://reehunt.com/wp-content/uploads/2021/05/vinhome-galaxy-1.jpg', 'Mỹ Đình Plaza 2', 'Linh Trung, Thủ Đức', 1, 0, 32500, 'Chung Cư', 3.6, 6.7, '2023-01-13 21:28:16', '2022-12-12 21:28:19');
INSERT INTO `properties` VALUES (1100, 'https://static.ladipage.net/5c4ac48c07ad483ea5d82dfe/vinhomes-cao-xa-la-20220815074159.jpg', 'Sun Square', 'Đống Đa, Hà Nội', 1, 0, 17800, 'Chung Cư', 7.9, 8.2, '2022-12-12 21:28:19', '2022-12-19 21:28:27');
INSERT INTO `properties` VALUES (1101, 'https://reehunt.com/wp-content/uploads/2021/05/vinhome-galaxy-8.jpg', 'Núi Trúc Square', 'Quận Tân Bình, Hồ Chí Minh', 1, 0, 18800, 'Chung Cư', 8.8, 12.5, '2022-12-19 21:28:27', '2022-12-12 21:28:33');

-- ----------------------------
-- Table structure for properties_details
-- ----------------------------
DROP TABLE IF EXISTS `properties_details`;
CREATE TABLE `properties_details`  (
  `id_ctda` int(11) NOT NULL,
  `id_duan` int(11) NOT NULL,
  `id_canho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `map` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_sophong` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_ctda`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of properties_details
-- ----------------------------
INSERT INTO `properties_details` VALUES (1001, 1001, '101', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 101);
INSERT INTO `properties_details` VALUES (1002, 1002, '102', 'https://goo.gl/maps/dnsx4CzoJCLH7nNR7https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2su', 102);
INSERT INTO `properties_details` VALUES (1003, 1003, '103', 'https://goo.gl/maps/dnsx4CzoJCLH7nNR7https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2su', 103);
INSERT INTO `properties_details` VALUES (1004, 1004, '104', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 104);
INSERT INTO `properties_details` VALUES (1005, 1005, '105', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 105);
INSERT INTO `properties_details` VALUES (1006, 1006, '106', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 106);
INSERT INTO `properties_details` VALUES (1007, 1007, '107', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 107);
INSERT INTO `properties_details` VALUES (1008, 1008, '108', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 108);
INSERT INTO `properties_details` VALUES (1009, 1009, '109', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 109);
INSERT INTO `properties_details` VALUES (1010, 1010, '110', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 110);
INSERT INTO `properties_details` VALUES (1011, 1011, '111', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 111);
INSERT INTO `properties_details` VALUES (1012, 1012, '112', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 112);
INSERT INTO `properties_details` VALUES (1013, 1013, '113', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 113);
INSERT INTO `properties_details` VALUES (1014, 1014, '114', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 114);
INSERT INTO `properties_details` VALUES (1015, 1015, '115', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 115);
INSERT INTO `properties_details` VALUES (1016, 1016, '116', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 116);
INSERT INTO `properties_details` VALUES (1017, 1017, '117', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 117);
INSERT INTO `properties_details` VALUES (1018, 1018, '118', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 118);
INSERT INTO `properties_details` VALUES (1019, 1019, '119', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 119);
INSERT INTO `properties_details` VALUES (1020, 1020, '120', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7839.387190195291!2d106.581722!3d10.758081!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a8e0403a6e5509c!2zQsOsbmggVMOibg!5e0!3m2!1svi!2sus!4v1670593604378!5m2!1svi!2sus', 120);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `id_service` int(11) NOT NULL AUTO_INCREMENT,
  `hoboi` tinyint(4) NULL DEFAULT NULL,
  `khuvuichoi` tinyint(4) NOT NULL,
  `picnic` tinyint(4) NOT NULL,
  `gym` tinyint(4) NULL DEFAULT NULL,
  `congvien` tinyint(4) NULL DEFAULT NULL,
  `id_ctda` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_service`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 1, 1, 1, 1, 1, 1001);
INSERT INTO `service` VALUES (2, 1, 1, 1, 1, 1, 1002);
INSERT INTO `service` VALUES (3, 1, 1, 1, 1, 1, 1003);
INSERT INTO `service` VALUES (4, 1, 1, 1, 1, 1, 1004);
INSERT INTO `service` VALUES (5, 1, 1, 1, 1, 1, 1005);
INSERT INTO `service` VALUES (6, 1, 1, 1, 1, 1, 1006);
INSERT INTO `service` VALUES (7, 0, 0, 0, 0, 0, 1007);
INSERT INTO `service` VALUES (8, 1, 1, 1, 1, 1, 1008);
INSERT INTO `service` VALUES (9, 0, 0, 0, 0, 0, 1009);
INSERT INTO `service` VALUES (10, 1, 1, 1, 1, 1, 1010);
INSERT INTO `service` VALUES (11, 1, 1, 1, 1, 1, 1011);
INSERT INTO `service` VALUES (12, 1, 1, 1, 1, 1, 1012);

-- ----------------------------
-- Table structure for so_phong
-- ----------------------------
DROP TABLE IF EXISTS `so_phong`;
CREATE TABLE `so_phong`  (
  `id_sophong` int(11) NOT NULL,
  `num_bed` int(11) NULL DEFAULT NULL,
  `num_bath` int(11) NULL DEFAULT NULL,
  `num_living` int(11) NULL DEFAULT NULL,
  `num_kitchen` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sophong`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of so_phong
-- ----------------------------
INSERT INTO `so_phong` VALUES (101, 4, 4, 4, 4);
INSERT INTO `so_phong` VALUES (102, 3, 3, 3, 3);
INSERT INTO `so_phong` VALUES (103, 4, 4, 4, 4);
INSERT INTO `so_phong` VALUES (104, 5, 5, 5, 5);
INSERT INTO `so_phong` VALUES (105, 3, 3, 3, 3);
INSERT INTO `so_phong` VALUES (106, 4, 4, 4, 4);
INSERT INTO `so_phong` VALUES (107, 5, 5, 5, 5);
INSERT INTO `so_phong` VALUES (108, 3, 3, 3, 3);
INSERT INTO `so_phong` VALUES (109, 4, 4, 4, 4);
INSERT INTO `so_phong` VALUES (110, 5, 5, 5, 5);
INSERT INTO `so_phong` VALUES (111, 3, 3, 3, 3);
INSERT INTO `so_phong` VALUES (112, 4, 4, 4, 4);
INSERT INTO `so_phong` VALUES (113, 4, 4, 4, 4);
INSERT INTO `so_phong` VALUES (114, 3, 3, 3, 3);
INSERT INTO `so_phong` VALUES (115, 4, 4, 4, 4);
INSERT INTO `so_phong` VALUES (116, 5, 5, 5, 5);
INSERT INTO `so_phong` VALUES (117, 3, 3, 3, 3);
INSERT INTO `so_phong` VALUES (118, 4, 4, 4, 4);
INSERT INTO `so_phong` VALUES (119, 5, 5, 5, 5);
INSERT INTO `so_phong` VALUES (120, 3, 3, 3, 3);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` decimal(10, 0) NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time_valid` datetime NULL DEFAULT NULL,
  `verified` tinyint(4) NULL DEFAULT NULL,
  `role` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
