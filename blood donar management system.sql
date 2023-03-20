CREATE TABLE admin1 (
  "id" int NOT NULL,
  "UserName" varchar(100) NOT NULL,
  "Password" varchar(100) NOT NULL,
  ) ;

--inserting values into ADMIN1

  INSERT INTO admin1("id","UserName","Password") VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4');


-- Table structure for table `tblblooddonars`
--

CREATE TABLE  "tblblooddonars" (
  "Id" int NOT NULL,
  "FullName" varchar(100) DEFAULT NULL,
  "MobileNumber" varchar(25)  DEFAULT NULL,
  "emailid" varchar(100) DEFAULT NULL,
  "Gender" varchar(20) DEFAULT NULL,
  "Age" int  DEFAULT NULL,
  "BloodGroup" varchar(20) DEFAULT NULL,
  "Address" varchar(255) DEFAULT NULL,
  "Message"  varchar(500),
  "status" int DEFAULT NULL
) 

--inserting the rows

INSERT INTO tblblooddonars ("id", "FullName", "MobileNumber", "EmailId", "Gender", "Age", "BloodGroup", "Address", "Message", "status") VALUES
(1, 'Anuj Kumar', '45', 'anuj@gmail.com', 'Male', 27, 'O+', ' Hyderabad', 'diabetes', 1),
(2, 'dasdasd', '85', 'dasdasd@dfdsf.com', 'Male', 34, 'AB-', ' Kurnool', 'bp', 1),
(3, 'Ami', '95', '', 'Male', 23, 'A+', 'telangana', 'bp' ,1),
(4, 'fdsfsgg', '35', '', 'Female', 26, 'AB-',  ' nizamabad', 'blood need', 1),
(5, 'Nitesh Kumart', '25', 'niiii@test.com', 'Male', 32, 'A-', 'bodhan', 'test demo', 1);


-- Table structure for table `tblbloodgroup`
--

CREATE TABLE  "tblbloodgroup" (
  "id" int NOT NULL,
  "BloodGroup" varchar(20) DEFAULT NULL,
) 

--inserting the rows into tblgroupdonors

INSERT INTO tblbloodgroup ("id", "BloodGroup") VALUES
(1, 'A-'),
(2, 'AB-'),
(3, 'O-'),
(4, 'A-'),
(5, 'A+'),
(6, 'AB+');

-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE tblcontactusinfo (
  "id" int NOT NULL,
  "Address" text,
  "emailId" varchar(255) DEFAULT NULL,
  "ContactNo" char(11) DEFAULT NULL
) 

--inserting rows into tblcontactinfo

INSERT INTO tblcontactusinfo ("id", "Address", "emailId", "ContactNo") VALUES
(1, 'Test Demo test demo', 'test@test.com', '8585233222');


-- Table structure for table `tblcontactusquery`
--

CREATE TABLE tblcontactusquery (
  "id" int NOT NULL,
  "name" varchar(100) DEFAULT NULL,
  "EmailId" varchar(120) DEFAULT NULL,
  "ContactNumber" char(11) DEFAULT NULL,
  "Message" text,
  "status" int 
)

--inserting rows into contactusquery

INSERT INTO tblcontactusquery ("id", "name", "EmailId", "ContactNumber", "Message", "status") VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'M WDW MSDNKVNKSD', 1),
(2, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', 1),
(3, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', 1),
(4, 'te', 'sdfsdf@gmail.com', '75787875545', 'sfsdf sdg hs h sh', 1);


-- Table structure for table `tblpages`
--

CREATE TABLE tblpage1 (
  "id" int NOT NULL,
  "PageName" varchar(255),
  "type" varchar(255),
  "detaiL" text
)

--inserting rows into tblpages

INSERT INTO tblpage1("id", "PageName", "type", "detail") VALUES
(2, 'Why Become Donor', 'donor', 'NAME: PRASHANTH, bloodgrp: o+ve, bp:nrml'),
(3, 'About us', 'About us','NAME: PRASHANTH, bloodgrp: o+ve, bp:nrml');


-- Indexes for table `admin`
--
ALTER TABLE admin1
  ADD PRIMARY KEY (id);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE tblblooddonars
  ADD PRIMARY KEY (id);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE tblbloodgroup
  ADD PRIMARY KEY (id);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE tblcontactusinfo
  ADD PRIMARY KEY (id);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE tblcontactusquery
  ADD PRIMARY KEY (id);

--
-- Indexes for table `tblpages`
--
ALTER TABLE tblpage1
  ADD PRIMARY KEY (id);


-- selecting all rows of all the tables in this database using select function


  SELECT * from admin1;
  SELECT * from tblblooddonars;
  SELECT * from tblbloodgroup;
  SELECT * from tblcontactusinfo;
  SELECT * from tblcontactusquery;
  SELECT * from tblpage1;


--EXPLANATION OF KEYWORDS
  --select keyword is used to select the rows in that particular table with or without conditions 
  -- Insert is used to insert the values into the column
  -- Alter is used to make changes in the specified tables columns
  --create is used to create the column