-- =============================================
-- Author: Anandan S
-- Create date: 24 Mar 2024
-- Description: This Stored procedure is used to delete the details of tblUser by Id
-- Procedure name: uspDeleteUserDetailById
-- =============================================

CREATE PROCEDURE uspDeleteUserDetailById
(
	 @UserId		   UNIQUEIDENTIFIER
)
AS
BEGIN
    DELETE FROM tblUser
	WHERE
	UserId = @UserId
END