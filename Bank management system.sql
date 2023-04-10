create database dbBankGM;
GO

use dbBankGM;
GO

--Creating table named UserLogins
CREATE TABLE UserLogins
(
	UserLoginID SMALLINT NOT NULL IDENTITY(1,1),
	UserLogin VARCHAR(50) NOT NULL,
	UserPassword VARCHAR(20) NOT NULL,
	CONSTRAINT pk_UL_UserLoginID PRIMARY KEY(UserLoginID)
);

--Creating table named UserSecurityQuestions
CREATE TABLE UserSecurityQuestions
(
	UserSecurityQuestionID TINYINT NOT NULL IDENTITY(1,1),
	UserSecurityQuestion VARCHAR(50) NOT NULL,
	CONSTRAINT pk_USQ_UserSecurityQuestionID PRIMARY KEY(UserSecurityQuestionID)
);


--Creating table named AccountType
CREATE TABLE AccountType
(
	AccountTypeID TINYINT NOT NULL IDENTITY(1,1),
	AccountTypeDescription VARCHAR(30) NOT NULL,
	CONSTRAINT pk_AT_AccountTypeID PRIMARY KEY(AccountTypeID)
);

--Creating table named AccountStatusType
CREATE TABLE AccountStatusType
(
	AccountStatusTypeID TINYINT NOT NULL IDENTITY(1,1),
	AccountStatusTypeDescription VARCHAR(30) NOT NULL,
	CONSTRAINT pk_AST_AccountStatusTypeID PRIMARY KEY(AccountStatusTypeID)
);

--Creating table named FailedTransactionErrorType
CREATE TABLE FailedTransactionErrorType
(
	FailedTransactionErrorTypeID TINYINT NOT NULL IDENTITY(1,1),
	FailedTransactionErrorTypeDescription VARCHAR(50) NOT NULL,
	CONSTRAINT pk_FTET_FailedTransactionErrorTypeID PRIMARY KEY(FailedTransactionErrorTypeID)
);


--Creating table named LoginErrorLog
CREATE TABLE LoginErrorLog
(
	ErrorLogID INT NOT NULL IDENTITY(1,1),
	ErrorTime DATETIME NOT NULL,
	FailedTransactionXML XML,
	CONSTRAINT pk_LEL_ErrorLogID PRIMARY KEY(ErrorLogID)
);

--Creating table named Employee
CREATE TABLE Employee
(
	EmployeeID INT NOT NULL IDENTITY(1,1),
	EmployeeFirstName VARCHAR(25) NOT NULL,
	EmployeeMiddleInitial CHAR(1),
	EmployeeLastName VARCHAR(25),
	EmployeeisManager BIT,
	CONSTRAINT pk_E_EmployeeID PRIMARY KEY(EmployeeID)
);

--Creating table named TransactionType
CREATE TABLE TransactionType
(
	TransactionTypeID TINYINT NOT NULL IDENTITY(1,1),
	TransactionTypeName CHAR(10) NOT NULL,
	TransactionTypeDescription VARCHAR(50),
	TransactionFeeAmount SMALLMONEY,
	CONSTRAINT pk_TT_TransactionTypeID PRIMARY KEY(TransactionTypeID)
);

/** INSERT rows section **/

insert into UserLogins values('User1', 'Pass1');
insert into UserLogins values('User2', 'Pass2');
insert into UserLogins values('User3', 'Pass3');
insert into UserLogins values('User4', 'Pass4');
insert into UserLogins values('User5', 'Pass5');

select * from UserLogins;

insert into UserSecurityQuestions values('What is the name of  first pet?');
insert into UserSecurityQuestions values('What is the name of  first pet?');
insert into UserSecurityQuestions values('What is the name of  first pet?');
insert into UserSecurityQuestions values('What is the name of  first pet?');
insert into UserSecurityQuestions values('What is the name of  first pet?');

select * from UserSecurityQuestions;

Insert into AccountType values('Savings');
Insert into AccountType values('Checking');


select * from AccountType;


insert into AccountStatusType values('Closed');
insert into AccountStatusType values('Active');
insert into AccountStatusType values('Dormant');
insert into AccountStatusType values('Passive');
insert into AccountStatusType values('Active');
select * from AccountStatusType;

insert into TransactionType values('Balance', 'See money', '0');
insert into TransactionType values('Transfer', 'Send money', '450');
insert into TransactionType values('Receive', 'Get money', '300');
insert into TransactionType values('Paid', 'Paid to John', '45000');
insert into TransactionType values('Statement', 'Checked monthly transaction', '0');
select * from TransactionType;

insert into Employee values('E3', 'K', 'E3', '0');
insert into Employee values('E5', 'B', 'E5', '1');
insert into Employee values('E7', 'P', 'E7', '0');
insert into Employee values('E9', 'R', 'E9', '1');
insert into Employee values('E11', 'K', 'E11', '1');

select * from Employee;

--Creating table named UserSecurityAnswers
CREATE TABLE UserSecurityAnswers
(
	UserLoginID SMALLINT NOT NULL IDENTITY(1,1),
	UserSecurityAnswers VARCHAR(25) NOT NULL,
	UserSecurityQuestionID TINYINT NOT NULL,
	CONSTRAINT pk_USA_UserLoginID PRIMARY KEY(UserLoginID), 
	CONSTRAINT fk_UL_UserLoginID FOREIGN KEY(UserLoginID) REFERENCES UserLogins(UserLoginID),
	CONSTRAINT fk_USQ_UserSecurityQuestionID FOREIGN KEY(UserSecurityQuestionID) REFERENCES UserSecurityQuestions(UserSecurityQuestionID)
);

insert into UserSecurityAnswers values('Apples', 1);
insert into UserSecurityAnswers values('Spiderman', 2);
insert into UserSecurityAnswers values('School1', 3);
insert into UserSecurityAnswers values('Ram', 4);
insert into UserSecurityAnswers values('Toyota', 5);
select * from UserSecurityAnswers;



SELECT * 
FROM UserLogins,UserSecurityQuestions,UserSecurityAnswers, AccountType,AccountStatusType, TransactionType,Employee;
