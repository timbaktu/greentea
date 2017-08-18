ALTER TABLE `wethinkfitness`.`wf_events` 
ADD COLUMN `buy_url` VARCHAR(500) NOT NULL AFTER `updateddate`,
ADD COLUMN `img_name` VARCHAR(45) NULL AFTER `buy_url`;

UPDATE `wethinkfitness`.`wf_events` SET `buy_url`='https://fitranx.com/myfitranx/', `img_name`='/img/event/event3.png' WHERE `id`='3';
UPDATE `wethinkfitness`.`wf_events` SET `buy_url`='http://www.rundanafarber.org/faf/home/ccp.asp?ievent=1159669&ccp=112822&track=RPTPW051917&msource=RPTPW051917', `img_name`='/img/event/event1.jpg' WHERE `id`='2';
UPDATE `wethinkfitness`.`wf_events` SET `buy_url`='https://www.spartan.com/en/race/detail/3350/overview', `img_name`='/img/event/event2.jpg' WHERE `id`='1';

