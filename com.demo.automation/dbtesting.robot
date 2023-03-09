*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem


Suite Setup     Connect to Database     pymysql     ${DBname}   ${DBuser}   ${DBpass}   ${DBhost}   ${DBport}
Suite Teardown   Disconnect From Database

*** Variables ***
${DBname}=  robotfmtesting
${DBuser}=  root
${DBpass}=  root
${DBhost}=  localhost
${DBport}=  3306

*** Test Cases ***
#Crate a dummy table
    #${output}=  execute sql string  CREATE TABLE `person` (`id` int NOT NULL AUTO_INCREMENT,`name` varchar(45) DEFAULT NULL,`age` varchar(45) DEFAULT NULL,PRIMARY KEY (`id`),UNIQUE KEY `idperson_UNIQUE` (`id`)) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    #LOG TO CONSOLE  ${output}
    #should be equal as strings  ${output}   None


Insert records
    ${output}=  execute sql script  ./com.demo.automation/insertdata.sql
    LOG TO CONSOLE  ${output}
    should be equal as strings  ${output}   None



