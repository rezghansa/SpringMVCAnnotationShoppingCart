ORACLE
-- Create table
create table ACCOUNTS
(
  USER_NAME VARCHAR2(20 CHAR) not null,
  ACTIVE    NUMBER(1) not null,
  PASSWORD  VARCHAR2(20 CHAR) not null,
  USER_ROLE VARCHAR2(20) not null
) ;
 
alter table ACCOUNTS
  add primary key (USER_NAME) ;
---------------------------------------
 
create table PRODUCTS
(
  CODE        VARCHAR2(20 CHAR) not null,
  IMAGE       BLOB,
  NAME        VARCHAR2(255 CHAR) not null,
  PRICE       FLOAT not null,
  CREATE_DATE DATE default sysdate not null
) ;
 
alter table PRODUCTS
  add primary key (CODE) ;
---------------------------------------
-- Create table
create table ORDERS
(
  ID               VARCHAR2(50 CHAR) not null,
  AMOUNT           FLOAT not null,
  CUSTOMER_ADDRESS VARCHAR2(255 CHAR) not null,
  CUSTOMER_EMAIL   VARCHAR2(128 CHAR) not null,
  CUSTOMER_NAME    VARCHAR2(255 CHAR) not null,
  CUSTOMER_PHONE   VARCHAR2(128 CHAR) not null,
  ORDER_DATE       TIMESTAMP(6) not null,
  ORDER_NUM        NUMBER(10) not null
) ;
alter table ORDERS
  add primary key (ID) ;
alter table ORDERS
  add constraint ORDER_UK unique (ORDER_NUM) ;
---------------------------------------

-- Create table
create table ORDER_DETAILS
(
  ID         VARCHAR2(50 CHAR) not null,
  AMOUNT     FLOAT not null,
  PRICE      FLOAT not null,
  QUANITY    NUMBER(10) not null,
  ORDER_ID   VARCHAR2(50 CHAR) not null,
  PRODUCT_ID VARCHAR2(20 CHAR) not null
) ;
--  
alter table ORDER_DETAILS
  add primary key (ID) ;
alter table ORDER_DETAILS
  add constraint ORDER_DETAIL_ORD_FK foreign key (ORDER_ID)
  references ORDERS (ID);
alter table ORDER_DETAILS
  add constraint ORDER_DETAIL_PROD_FK foreign key (PRODUCT_ID)
  references PRODUCTS (CODE);
 
---------------------------------------  
insert into Accounts (USER_NAME, ACTIVE, PASSWORD, USER_ROLE)
values ('employee1', 1, '123', 'EMPLOYEE');

insert into Accounts (USER_NAME, ACTIVE, PASSWORD, USER_ROLE)
values ('manager1', 1, '123', 'MANAGER');

----------------
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S001', 'Core Java', 100, sysdate);

insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S002', 'Spring for Beginners', 50, sysdate);

insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S003', 'Swift for Beginners', 120, sysdate);

insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S004', 'Oracle XML Parser', 120, sysdate);

insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S005', 'CSharp Tutorial for Beginers', 110, sysdate);

Commit; 



SQL Server


create table Accounts (
        User_Name varchar(20) not null,
        Active bit not null,
        Password varchar(20) not null,
        User_Role varchar(20) not null,
        primary key (User_Name)
    );
 
    create table Order_Details (
        ID varchar(50) not null,
        Amount double precision not null,
        Price double precision not null,
        Quanity int not null,
        ORDER_ID varchar(50) not null,
        PRODUCT_ID varchar(20) not null,
        primary key (ID)
    );
 
    create table Orders (
        ID varchar(50) not null,
        Amount double precision not null,
        Customer_Address varchar(255) not null,
        Customer_Email varchar(128) not null,
        Customer_Name varchar(255) not null,
        Customer_Phone varchar(128) not null,
        Order_Date datetime not null,
        Order_Num int not null,
        primary key (ID)
    );
 
    create table Products (
        Code varchar(20) not null,
        Create_Date datetime not null,
        Image image,
        Name varchar(255) not null,
        Price double precision not null,
        primary key (Code)
    );
 
    alter table Orders
        add constraint UK_sxhpvsj665kmi4f7jdu9d2791  unique (Order_Num);
 
    alter table Order_Details
        add constraint ORDER_DETAIL_ORD_FK
        foreign key (ORDER_ID)
        references Orders;
 
    alter table Order_Details
        add constraint ORDER_DETAIL_PROD_FK
        foreign key (PRODUCT_ID)
        references Products;
 
---------------------------------------  
insert into Accounts (USER_NAME, ACTIVE, PASSWORD, USER_ROLE)
values ('employee1', 1, '123', 'EMPLOYEE');
 
insert into Accounts (USER_NAME, ACTIVE, PASSWORD, USER_ROLE)
values ('manager1', 1, '123', 'MANAGER');
 
----------------
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S001', 'Core Java', 100, SYSDATETIME() );
 
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S002', 'Spring for Beginners', 50, SYSDATETIME() );
 
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S003', 'Swift for Beginners', 120, SYSDATETIME() );
 
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S004', 'Oracle XML Parser', 120, SYSDATETIME() );
 
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S005', 'CSharp Tutorial for Beginers', 110, SYSDATETIME() );



MySql

 create table Accounts (
        User_Name varchar(20) not null,
        Active bit not null,
        Password varchar(20) not null,
        User_Role varchar(20) not null,
        primary key (User_Name)
    );
 
    create table Order_Details (
        ID varchar(50) not null,
        Amount double precision not null,
        Price double precision not null,
        Quanity integer not null,
        ORDER_ID varchar(50) not null,
        PRODUCT_ID varchar(20) not null,
        primary key (ID)
    );
 
    create table Orders (
        ID varchar(50) not null,
        Amount double precision not null,
        Customer_Address varchar(255) not null,
        Customer_Email varchar(128) not null,
        Customer_Name varchar(255) not null,
        Customer_Phone varchar(128) not null,
        Order_Date datetime not null,
        Order_Num integer not null,
        primary key (ID)
    );
 
    create table Products (
        Code varchar(20) not null,
        Create_Date datetime not null,
        Image longblob,
        Name varchar(255) not null,
        Price double precision not null,
        primary key (Code)
    );
 
    alter table Orders
        add constraint UK_sxhpvsj665kmi4f7jdu9d2791  unique (Order_Num);
 
    alter table Order_Details
        add constraint ORDER_DETAIL_ORD_FK
        foreign key (ORDER_ID)
        references Orders (ID);
 
    alter table Order_Details
        add constraint ORDER_DETAIL_PROD_FK
        foreign key (PRODUCT_ID)
        references Products (Code);
 
---------------------------------------
insert into Accounts (USER_NAME, ACTIVE, PASSWORD, USER_ROLE)
values ('employee1', 1, '123', 'EMPLOYEE');
 
insert into Accounts (USER_NAME, ACTIVE, PASSWORD, USER_ROLE)
values ('manager1', 1, '123', 'MANAGER');
 
----------------
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S001', 'Core Java', 100, current_timestamp() );
 
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S002', 'Spring for Beginners', 50, current_timestamp() );
 
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S003', 'Swift for Beginners', 120, current_timestamp() );
 
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S004', 'Oracle XML Parser', 120, current_timestamp() );
 
insert into products (CODE, NAME, PRICE, CREATE_DATE)
values ('S005', 'CSharp Tutorial for Beginers', 110, current_timestamp() );




POM.XML
<!-- MySQL JDBC driver -->
        <!-- http://mvnrepository.com/artifact/mysql/mysql-connector-java -->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>5.1.34</version>
        </dependency>
 
        <!-- Oracle JDBC driver -->
        <dependency>
            <groupId>com.oracle</groupId>
            <artifactId>ojdbc6</artifactId>
            <version>11.2.0.3</version>
        </dependency>
 
        <!-- SQLServer JDBC driver (JTDS) -->
        <!-- http://mvnrepository.com/artifact/net.sourceforge.jtds/jtds -->
        <dependency>
            <groupId>net.sourceforge.jtds</groupId>
            <artifactId>jtds</artifactId>
            <version>1.3.1</version>
        </dependency>
         
        <!-- PostgreSQL driver -->
        <!-- https://mvnrepository.com/artifact/postgresql/postgresql -->
        <dependency>
            <groupId>postgresql</groupId>
            <artifactId>postgresql</artifactId>
            <version>9.1-901-1.jdbc4</version>
        </dependency>
		
		
hibranate.confgi
SQL Server
# DataSource
 
ds.database-driver=net.sourceforge.jtds.jdbc.Driver
ds.url=jdbc:jtds:sqlserver://localhost:1433/simplehr;instance=SQLEXPRESS
ds.username=shoppingcart
ds.password=12345
 
 
# Hibernate Config
 
hibernate.dialect=org.hibernate.dialect.SQLServerDialect
hibernate.show_sql=true
current_session_context_class=thread
hibernate.hbm2ddl.auto=update


ORACLE
# DataSource
 
ds.database-driver=oracle.jdbc.driver.OracleDriver
ds.url=jdbc:oracle:thin:@localhost:1521:db12c
ds.username=shoppingcart
ds.password=12345
 
 
# Hibernate Config
 
hibernate.dialect=org.hibernate.dialect.Oracle10gDialect
hibernate.show_sql=true
current_session_context_class=thread
hibernate.hbm2ddl.auto=update


MySQL
# DataSource
 
ds.database-driver=com.mysql.jdbc.Driver
ds.url=jdbc:mysql://localhost:3306/mydatabase
ds.username=root
ds.password=12345
 
 
# Hibernate Config
 
hibernate.dialect=org.hibernate.dialect.MySQLDialect
hibernate.show_sql=true
current_session_context_class=thread
hibernate.hbm2ddl.auto=update


URL
http://o7planning.org/en/10605/create-a-java-shopping-cart-web-application-using-spring-mvc-and-hibernate

