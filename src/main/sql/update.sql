ALTER TABLE `aesccontracts`.`xescscldtcw_contract` 
DROP COLUMN `payment4`,
DROP COLUMN `payday`,
CHANGE COLUMN `merchant_name` `merchant_name` VARCHAR(200) NULL DEFAULT NULL COMMENT '承租方名称' ;
