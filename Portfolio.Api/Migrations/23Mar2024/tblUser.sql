CREATE TABLE tblUser
(
	UserId			UNIQUEIDENTIFIER  PRIMARY KEY,
	RoleId			UNIQUEIDENTIFIER CONSTRAINT Fk_tblUser_RoleId_tblRole_RoleId FOREIGN KEY(RoleId) REFERENCES tblRole(RoleId),
	UserName		NVARCHAR(128) UNIQUE,
	FirstName		NVARCHAR(128),
	LastName		NVARCHAR(128),
	EmailId			NVARCHAR(256),
	MobileNumber	NVARCHAR(32),
	DateBorn		DATETIME,
	Gender			INT,
	DateJoined		DATETIME,
	IsActive		BIT,
	IsVerified		BIT,
	OTP				INT,
	UserKey			NVARCHAR(256),
	Picture			NVARCHAR(256)
)