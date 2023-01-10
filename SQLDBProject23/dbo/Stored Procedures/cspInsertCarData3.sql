 CREATE PROCEDURE cspInsertCarData3 (
	                                          @Make VARCHAR(50),
											  @BodyStyle VARCHAR(50),
	                                          @Year DATE,
	                                          @Color VARCHAR(50), 
							                  @Model VARCHAR(50), 
											  @PricePerMile  MONEY,
											  @PricePerDay MONEY,
										      @LicensePlate VARCHAR(50),
	                                          @VIN VARCHAR(50), 
	                                         @CarImage IMAGE, 	
											 @CarStatus BIT,
											 @ModifiedDate DATETIME,  
	                                        @ModifiedBy VARCHAR(50)	
						                    )
    AS 
	BEGIN
	DECLARE @CategoryID INT =
	 
	(select CategoryID from Category WHERE BodyStyle = @BodyStyle AND PricePerMile  = @PricePerMile AND PricePerDay = @PricePerDay) 
	     INSERT INTO Category(BodyStyle, PricePerMile,PricePerDay,ModifiedDate,ModifiedBy)
	     SELECT @BodyStyle,@PricePerMile,@PricePerDay,@ModifiedDate,@ModifiedBy
  		 INSERT INTO Car( CategoryID,Make, Year, Color, Model,LicensePlate,VIN ,CarImage) 
	     SELECT @CategoryID,@Make,@Year, @Color, @Model,@LicensePlate,@VIN ,@CarImage
    END