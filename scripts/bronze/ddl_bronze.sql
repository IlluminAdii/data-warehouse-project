CREATE OR ALTER PROCEDURE BRONZE.load_bronze as
BEGIN
	PRINT '-------------------------------------------';
	PRINT 'LOADING BRONZE LAYER';
	PRINT '-------------------------------------------';

	TRUNCATE TABLE BRONZE.crm_cust_info; 
	BULK INSERT BRONZE.crm_cust_info
	from 'C:\Users\Adithya Murali\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	with 
	(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE BRONZE.crm_prd_info;
	BULK INSERT BRONZE.crm_prd_info 
	from 'C:\Users\Adithya Murali\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	with 
	(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE BRONZE.crm_sales_details;
	BULK INSERT BRONZE.crm_sales_details
	from 'C:\Users\Adithya Murali\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	with 
	(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE BRONZE.erp_cust_az12;
	BULK INSERT BRONZE.erp_cust_az12 
	FROM 'C:\Users\Adithya Murali\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
	with 
	(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE BRONZE.erp_loc_a101;
	BULK INSERT BRONZE.erp_loc_a101 
	FROM 'C:\Users\Adithya Murali\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
	with 
	(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE BRONZE.erp_px_cat_gv12;
	BULK INSERT BRONZE.erp_px_cat_gv12 
	FROM 'C:\Users\Adithya Murali\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	with 
	(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		TABLOCK
	);
END 


