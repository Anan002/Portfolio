-- =============================================
-- Author: Anandan S
-- Create date: 24 Mar 2024
-- Description: This Stored procedure is used to get the details of tblUser by Id
-- Procedure name: uspGetAllUserDetailsId
-- =============================================

ALTER PROCEDURE uspGetAllUserDetailsId
(
    @UserId UNIQUEIDENTIFIER,
    @IsActive BIT = 1,
    @IsVerified BIT = 1
)

AS

BEGIN
    SELECT 
        TR.RoleName,
        TU.UserName,
        TU.FirstName,
        TU.LastName,
        TU.EmailId,
        TU.MobileNumber,
        TU.DateBorn,
        TU.Gender,
        TU.DateJoined,
        TU.OTP,
        TU.UserKey,
        TU.Picture
    FROM 
        tblUser TU
    INNER JOIN 
        tblRole TR ON TR.RoleId = TU.RoleId
    WHERE 
        TU.UserId = @UserId 
        AND TU.IsActive = @IsActive 
        AND TU.IsVerified = @IsVerified;
END