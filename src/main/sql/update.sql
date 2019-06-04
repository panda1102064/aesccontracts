ALTER TABLE `aesccontracts`.`escdate` 
ADD COLUMN `upper2` VARCHAR(45) NULL AFTER `total`,
ADD COLUMN `offer_rent` VARCHAR(45) NULL AFTER `upper2`,
ADD COLUMN `upper3` VARCHAR(45) NULL AFTER `offer_rent`;

ALTER TABLE `aesccontracts`.`esc_contract` 
DROP COLUMN `penetrance`,
DROP COLUMN `trading_record`,
DROP COLUMN `car_number`,
DROP COLUMN `net_fee`;