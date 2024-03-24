-- =============================================
-- Author: Anandan S
-- Create date: 24 Mar 2024
-- Description: This Stored procedure is used to update the details of tblUser by Id
-- Procedure name: uspUpdateUserDetailById
-- =============================================

CREATE PROCEDURE uspUpdateUserDetailById
(
	 @UserId		   UNIQUEIDENTIFIER,
     @RoleId           UNIQUEIDENTIFIER = NULL,
     @UserName         NVARCHAR(256) = NULL,
     @FirstName        NVARCHAR(256) = NULL,
     @LastName         NVARCHAR(256) = NULL,
     @EmailId          NVARCHAR(512) = NULL,
     @MobileNumber     NVARCHAR(32) = NULL,
     @DateBorn         DATETIME,
     @Gender           INT = NULL,
     @DateJoined       DATETIME = NULL,
     @IsActive         BIT = 1,
     @IsVerified       BIT = 1,
     @OTP              INT = NULL,
     @UserKey          NVARCHAR(512) = NULL,
     @Picture          NVARCHAR(512) = NULL
)
AS
BEGIN
    UPDATE tblUser
	SET 		
	 RoleId      = @RoleId      
	,UserName    = @UserName    
	,FirstName   = @FirstName   
	,LastName    = @LastName    
	,EmailId     = @EmailId     
	,MobileNumber= @MobileNumber
	,DateBorn    = @DateBorn    
	,Gender      = @Gender      
	,DateJoined  = @DateJoined  
	,IsActive    = @IsActive    
	,IsVerified  = @IsVerified  
	,OTP         = @OTP         
	,UserKey     = @UserKey     
	,Picture     = @Picture   
	
	WHERE
	UserId = @UserId
END