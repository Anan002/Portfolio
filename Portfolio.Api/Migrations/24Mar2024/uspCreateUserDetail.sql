-- =============================================
-- Author: Anandan S
-- Create date: 24 Mar 2024
-- Description: This Stored procedure is used to Create the details of tblUser
-- Procedure name: uspCreateUserDetail
-- =============================================

ALTER PROCEDURE uspCreateUserDetail
(
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
    INSERT INTO tblUser
    (
        UserId,
        RoleId,
        UserName,
        FirstName,
        LastName,
        EmailId,
        MobileNumber,
        DateBorn,
        Gender,
        DateJoined,
        IsActive,
        IsVerified,
        OTP,
        UserKey,
        Picture
    )
    VALUES
    (
        NEWID(),
        @RoleId,
        @UserName,
        @FirstName,
        @LastName,
        @EmailId,
        @MobileNumber,
        @DateBorn,
        @Gender,
        @DateJoined,
        @IsActive,
        @IsVerified,
        @OTP,
        @UserKey,
        @Picture
    );
END
