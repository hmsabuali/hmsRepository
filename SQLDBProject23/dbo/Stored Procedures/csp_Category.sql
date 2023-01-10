CREATE   PROCEDURE csp_Category
(
	
	 @BodyStyle VARCHAR(50)
	, @Price_Permile MONEY
)
AS
BEGIN
	   IF NOT EXISTS(SELECT * FROM Category 
	   WHERE BodyStyle = @BodyStyle)
		INSERT INTO Category (  BodyStyle,Price_Permile)
		SELECT @BodyStyle,@Price_Permile
	ELSE
		PRINT 'BodyStyle Already exists!! Please choose a new BodyStyle'
END