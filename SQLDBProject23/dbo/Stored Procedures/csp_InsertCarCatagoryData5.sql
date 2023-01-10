CREATE PROCEDURE   csp_InsertCarCatagoryData5 (
                   ---Catagory
				@BodyStyle VARCHAR(50)
				,@Price_Permile MONEY
		
				 --Car
				 ,@Make VARCHAR(20)
				 ,@Year SMALLINT 
				 ,@Color VARCHAR(50)
				 ,@Model VARCHAR(50)
				 ,@License_Plate VARCHAR(50)
				 ,@Milage INT
				 ,@VIN VARCHAR(50)
				 ,@Car_Image IMAGE
				 ,@Status VARCHAR(20)
				 ,@ModifiedDate DATE
				 ,@ModifiedBy VARCHAR
	)
	AS 
BEGIN
DECLARE  @CatagoryID INT =@@IDENTITY
    
	    INSERT INTO Category VALUES(@BodyStyle, @Price_Permile)
		SELECT @CatagoryID  =@@IDENTITY
	    INSERT INTO Car  VALUES(@CatagoryID,@Make, @Year, @Color,@Model, @License_Plate, @Milage, @VIN, @Car_Image, @Status,@ModifiedDate,@ModifiedBy)
END










