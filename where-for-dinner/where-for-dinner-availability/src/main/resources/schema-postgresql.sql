CREATE TABLE IF NOT EXISTS availability ( id bigserial NOT NULL PRIMARY KEY,  searchName VARCHAR(255) NOT NULL, diningName VARCHAR(255) NOT NULL,
    address VARCHAR(255), locality VARCHAR(255), region VARCHAR(255), postalCode VARCHAR(255), phoneNumber VARCHAR(255), reservationURL VARCHAR(1024),
    requestSubject VARCHAR(255) NOT NULL);

CREATE INDEX IF NOT EXISTS IDX_AVIAL_SEARCH ON availability(searchName,diningName,requestSubject);    
    
CREATE TABLE IF NOT EXISTS availability_window (id bigserial NOT NULL PRIMARY KEY, availabilityId bigint NOT NULL, startTime bigint NOT NULL, 
    endTime bigint NOT NULL);
    
CREATE INDEX IF NOT EXISTS IDX_AVIAL_WINDOW_AVIAL_ID ON availability_window(availabilityId);    