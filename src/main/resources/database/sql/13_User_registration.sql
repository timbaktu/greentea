
CREATE TABLE `wf_user_registration` (
  `id` bigint(20) NOT NULL auto_increment,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthdate` datetime NOT NULL,
  `gender` varchar(50) NOT NULL,
  `weight` varchar(50) default NULL,
  `height` varchar(50) default NULL,
  `bmi` varchar(50) default NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddatetime` datetime NOT NULL,
  `modifieddatetime` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;