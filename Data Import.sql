Create database Credit_card;

create table cc_detail
(
		Client_Num INT,
        Card_category varchar(20),
        Annual_Fees INT,
        Activation_30_days INT,
        Customer_Acq_cost INT,
        Week_Start_Date DATE,
        Week_Num VARCHAR(20),
        Qtr VARCHAR(10),
        current_year INT,
        Credit_Limit DECIMAL(10,2),
        Total_revolving_balance INT,
        Total_transaction_amount INT,
        Total_transaction_Ct INT,
        Avg_Utilisation_Ratio DECIMAL(10,3),
        Use_chip VARCHAR(10),
        Exp_type  VARCHAR(50),
        Interest_Earned DECIMAL(10,3),
        Delinquent_acc VARCHAR(5)
);

create table customer_detail
(
		Client_Num INT,
        Customer_age INT,
        Gender varchar(5),
        Dependent_Count INT,
        Education_level VARCHAR(50),
        Marital_Status VARCHAR(20),
        State_cd VARCHAR(50),
        Zipcode VARCHAR(20),
        Car_owner VARCHAR(5),
        House_owner VARCHAR(5),
        Personal_loan VARCHAR(5),
        Contact VARCHAR(50),
        Customer_job VARCHAR(50),
        Income INT,
        Cust_Satisfaction_score INT
);        
LOAD DATA  INFILE "cc_details.csv" INTO TABLE cc_detail
FIELDS TERMINATED BY ','
IGNORE 1 LINES;        

LOAD DATA  INFILE "customer.csv" INTO TABLE customer_detail
FIELDS TERMINATED BY ','
IGNORE 1 LINES;    

LOAD DATA  INFILE "cc_add.csv" INTO TABLE cc_detail
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA  INFILE "cust_add.csv" INTO TABLE customer_detail
FIELDS TERMINATED BY ','
IGNORE 1 LINES;  