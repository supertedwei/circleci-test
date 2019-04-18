DROP TABLE IF EXISTS `bet_amount`;
CREATE TABLE `bet_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bet_amount` float(11) NOT NULL,
  `ball` int(11) NOT NULL,
  `normal` float(11) NOT NULL,
  `bonus` float(11) NOT NULL,
  `payout` float(11) NOT NULL,
  UNIQUE ball_betamount(`ball`,`bet_amount`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `game_result`;
CREATE TABLE `game_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `game_session_id` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT '2018-04-01 12:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `game_session`;
CREATE TABLE `game_session` (
  `id` varchar(64) NOT NULL COMMENT 'Game Session ID',
  `user_id` varchar(64) NOT NULL COMMENT 'User ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `user_id` varchar(64) NOT NULL COMMENT 'User ID',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;