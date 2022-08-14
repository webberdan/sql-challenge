--Table schema for employees database


CREATE TABLE TITLES_1 
(
    titleID VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    CONSTRAINT pk_TITLES_1 PRIMARY KEY (
        titleID
     )
);

CREATE TABLE EMPLOYEES_2 (
    employeeNum INT NOT NULL,
    titleID VARCHAR,
    birthdate DATE   NOT NULL,
    firstName VARCHAR   NOT NULL,
    lastName VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hireDate DATE   NOT NULL,
    PRIMARY KEY (employeeNum),
    FOREIGN KEY (titleID) REFERENCES TITLES_1(titleID)
    
);



CREATE TABLE DEPARTMENT_3 (
    deptNum VARCHAR   NOT NULL,
    deptName VARCHAR   NOT NULL,
    PRIMARY KEY (deptNum)
);


CREATE TABLE DEPARTMENT_MANAGER_4 (
    deptNum VARCHAR   NOT NULL,
    FOREIGN KEY (deptNum) REFERENCES DEPARTMENT_3(deptNum),
    employeeNum INT   NOT NULL,
    FOREIGN KEY (employeeNum) REFERENCES EMPLOYEES_2(employeeNum),
    PRIMARY KEY (deptNum, employeeNum)
);



CREATE TABLE DEPARTMENT_EMPLOYEE_5 (
    deptNum VARCHAR   NOT NULL,
    FOREIGN KEY (deptNum) REFERENCES DEPARTMENT_3(deptNum),
    employeeNum INT   NOT NULL,
    FOREIGN KEY (employeeNum) REFERENCES EMPLOYEES_2(employeeNum),
    PRIMARY KEY (deptNum, employeeNum)
);

CREATE TABLE SALARIES_6 (
    employeeNum INT   NOT NULL,
    salary INT   NOT NULL,
    FOREIGN KEY (employeeNum) REFERENCES EMPLOYEES_2(employeeNum)
);



