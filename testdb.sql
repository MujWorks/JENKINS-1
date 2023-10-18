

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `messages` (`ID`, `Name`, `Email`, `Phone`, `Message`) VALUES
(1, 'muj', 'jhsdiq', '656858', 'jsdi uidh qwod \r\n'),
(2, 'tu', 'yuy', 'uyuy', 'uy'),
(3, '', '', '', ''),
(4, 'sq', 'qwq', 'qw', 'qw');


ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

