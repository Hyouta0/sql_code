-- Generate a report thet shows all colums from tran_dtl table plus one additional column:
-- "cal_price" - calculated as amt/qty 
USE retail;
SELECT *,(amt/qty) AS cal_price FROM  tran_dtl ;
