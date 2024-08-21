-- DROP TABLE IF EXISTS departments;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS salaries;
-- DROP TABLE IF EXISTS titles;

CREATE TABLE "departments" (
    "dept_no" VARCHAR PRIMARY KEY NOT NULL,
    "dept_name" VARCHAR NOT NULL
);

CREATE TABLE "titles" (
    "title_id" VARCHAR PRIMARY KEY NOT NULL,
    "title" VARCHAR NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INTEGER PRIMARY KEY NOT NULL,
    "emp_title_id" VARCHAR NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" DATE NOT NULL,
    FOREIGN KEY ("emp_title_id") REFERENCES "titles"("title_id")
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER NOT NULL,
    "dept_no" VARCHAR NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "departments"("dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INTEGER NOT NULL,
    FOREIGN KEY ("dept_no") REFERENCES "departments"("dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no")
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER PRIMARY KEY NOT NULL,
    "salary" INTEGER NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no")
);
