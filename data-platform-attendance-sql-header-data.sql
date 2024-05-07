CREATE TABLE `data_platform_attendance_header_data`
(
  `Attendance`            int(20) NOT NULL,
  `AttendanceDate`        date NOT NULL,
  `AttendanceTime`        time NOT NULL,
  `Attender`              int(12) NOT NULL,
  `AttendanceObjectType`  varchar(40) NOT NULL,
  `AttendanceObject`      int(16) NOT NULL,
  `Participation`         int(20) DEFAULT NULL,
  `CreationDate`          date NOT NULL,
  `CreationTime`          time NOT NULL,
  `IsCancelled`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Attendance`),

    CONSTRAINT `DPFMAttendanceHeaderDataAttender_fk` FOREIGN KEY (`Attender`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMAttendanceHeaderDataParticipation_fk` FOREIGN KEY (`Participation`) REFERENCES `data_platform_participation_header_data` (`Participation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
