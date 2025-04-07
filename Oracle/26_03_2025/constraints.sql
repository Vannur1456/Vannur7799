--Constraints
--NOT NULL

CREATE TABLE xxnyb_constraints_test (
    sno             NUMBER,
    constraint_name VARCHAR2(50) NOT NULL,
    comments        VARCHAR2(500)
);

INSERT INTO xxnyb_constraints_test VALUES ( 1, );
commit;


INSERT INTO xxnyb_constraints_test (
    sno,
    comments
) VALUES ( 2,
           'No comments' );
           
           
--UNIQUE

ALTER TABLE XXNYB_CONSTRAINTS_TEST
MODIFY sno number UNIQUE;

desc XXNYB_CONSTRAINTS_TEST;

INSERT INTO xxnyb_constraints_test VALUES ( 2,
                                            'Unique',
                                            'It wont allow Duplicate values' );
                                            
select * from XXNYB_CONSTRAINTS_TEST; 

INSERT INTO xxnyb_constraints_test VALUES ( 2,
                                            'Duplicate Unique',
                                            'No Comments' );
                                            
ROLLBACK;                                            
                                            
ALTER TABLE XXNYB_CONSTRAINTS_TEST
DROP constraint SYS_C008486;


--PRIMARY KEY

ALTER TABLE xxnyb_constraints_test ADD CONSTRAINT sno_pk PRIMARY KEY ( sno );



INSERT INTO xxnyb_constraints_test VALUES ( 2,
                                            'Duplicate Unique',
                                            'No Comments' );
                                        

INSERT INTO xxnyb_constraints_test VALUES ( NULL,
                                            'Duplicate Unique',
                                            'No Comments' );
                                            
--COMPOSITE Primary Key

CREATE TABLE xxnyb_employees_test (
    employee_id   NUMBER,
    employee_name VARCHAR2(100),
    hire_date     DATE,
    department_id NUMBER,
    CONSTRAINT emp_pk PRIMARY KEY (employee_id, employee_name)
);

insert into xxnyb_employees_test values (1001, 'Chandeep', sysdate -280, 10);
insert into xxnyb_employees_test values (1002, 'Chandeep', sysdate -218, 20);

insert into xxnyb_employees_test values (1001, 'Vamsi', sysdate -280, 10);
insert into xxnyb_employees_test values (1002, 'Vamsi', sysdate -268, 20);

commit;


insert into xxnyb_employees_test values (1001, 'Vamsi', sysdate -268, 20);

insert into xxnyb_employees_test values (NULL, NULL, sysdate -268, 20);

select * from xxnyb_employees_test;