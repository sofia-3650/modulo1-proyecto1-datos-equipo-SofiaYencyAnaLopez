CREATE SCHEMA `ADALAB_pro`;
USE `ADALAB_pro`;

CREATE TABLE `tabla_xml` 
		(`index_xml` INT AUTO_INCREMENT NOT NULL,
		`time` VARCHAR(45) NOT NULL,
		`age` VARCHAR(45) NOT NULL,
		`gender` VARCHAR(45) NOT NULL,
		`index_sql` INT NOT NULL,
		PRIMARY KEY(`index_xml`),
		CONSTRAINT `fk-tablasql-tablaxml`
			FOREIGN KEY (`index_sql`)
			REFERENCES `tabla_sql`(`index_sql`)
			ON UPDATE CASCADE
        );
CREATE TABLE `tabla_sql`
	(`index_sql` INT NOT NULL AUTO_INCREMENT,
    `q10_part_1`VARCHAR(100),
    `q10_part2`VARCHAR(100),
    `q10_part3`VARCHAR(100),
    `q10_part4`VARCHAR(100),
    `q10_part5`VARCHAR(100),
    `q10_part6`VARCHAR(100),
    `q10_part7`VARCHAR(100),
    `q10_part8`VARCHAR(100),
    `q10_part9`VARCHAR(100),
    `q10_part10`VARCHAR(100),
    `q10_part11`VARCHAR(100),
    `q10_part12`VARCHAR(100),
    `q10_part13`VARCHAR(100),
    `q10_part14`VARCHAR(100),
    `q10_part15`VARCHAR(100),
    `q10_part16`VARCHAR(100),
    `d482xta`VARCHAR(100),
    PRIMARY KEY (`index_sql`)
    );

CREATE TABLE `tabla_txt`
		(`index_txt` INT AUTO_INCREMENT NOT NULL,
        `index_sql` INT NOT NULL,
        `q3` VARCHAR(45),
        `q4` VARCHAR(100),
        `q5` VARCHAR(100),
        `q6` VARCHAR(45),
        `q7`VARCHAR(100),
        `q8` VARCHAR(45),
        `q9` TEXT(1000),
        `q11` TEXT(1000),
        `q12` TEXT(1000),
        `q13` TEXT(1000),
        `q14` TEXT(1000),
        `q15` TEXT(1000),
        `q16`TEXT(1000),
        `q17` TEXT(1000),
        `q20` TEXT(1000),
        `q21` TEXT(1000),
		`q22` TEXT(1000),
		`q23` TEXT(1000),
        `q24` TEXT(1000),
		`q25` TEXT(1000),
		`q26` TEXT(1000),
		`q32` TEXT(1000),
		`q33` TEXT(1000),
        `q34` TEXT(1000),
		`q35` TEXT(1000),
		`q41` TEXT(1000),
		PRIMARY KEY(`index_txt`),
          CONSTRAINT `fk-tablasql-tablatxt`
		FOREIGN KEY (`index_sql`)
		REFERENCES `tabla_sql`(`index_sql`)
        ON UPDATE CASCADE
        );


    
        
        
