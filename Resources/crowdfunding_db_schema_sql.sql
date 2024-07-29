DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;


CREATE TABLE category(
	category_id VARCHAR(20) NOT NULL PRIMARY KEY,
	category VARCHAR(20) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(20) NOT NULL PRIMARY KEY,
	sub_category VARCHAR(20) NOT NULL
);

CREATE TABLE contacts(
	contact_id INT NOT NULL PRIMARY KEY,
	First_Name VARCHAR (20) NOT NULL,
	Last_Name VARCHAR (20) NOT NULL,
	email VARCHAR (60) NOT NULL
);


CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(70) NOT NULL,
	description VARCHAR(70) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(20) NOT NULL,
	backers_count BIGINT NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL ,
	subcategory_id VARCHAR(10) NOT NULL,
	PRIMARY KEY (contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);



