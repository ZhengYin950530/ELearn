//用户表
CREATE TABLE `y_user` (

  `user_id` varchar(10) NOT NULL,

  `username` varchar(20) DEFAULT NULL,

  `password` varchar(20) DEFAULT NULL,

  `flag` int(1) DEFAULT NULL COMMENT '0:administer\r\n1:teacher\r\n2:student',

  PRIMARY KEY (`user_id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

//学生表
CREATE TABLE `y_student` (
  `student_id` varchar(10) NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `student_sex` int(1) DEFAULT NULL COMMENT '0：男；1：女',
  `student_age` int(3) DEFAULT NULL,
  `student_tel` int(11) DEFAULT NULL,
  `student_address` varchar(100) DEFAULT NULL,
  `student_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

