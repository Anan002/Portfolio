-- =============================================
-- Author:		Anandan S
-- Create date: 24 Mar 2024
-- Description:	This Stored procedure is used to get all the details of tblUser
-- Procedure name: uspGetAllUserDetails
-- =============================================

ALTER PROCEDURE uspGetAllUserDetails
(
	@IsActive BIT=1,
	@IsVerified BIT=1
)

AS

SELECT 
	TR.RoleName
	,TU.UserName
	,TU.FirstName
	,TU.LastName
	,TU.EmailId
	,TU.MobileNumber
	,TU.DateBorn
	,TU.Gender
	,TU.DateJoined
	,TU.OTP
	,TU.UserKey
	,TU.Picture
FROM tblUser TU
INNER JOIN tblRole TR ON TR.RoleId = TU.RoleId