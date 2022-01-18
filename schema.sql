CREATE TABLE seller_account (
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(255) NOT NULL,
    email           VARCHAR(255) NOT NULL,
    password        VARCHAR(255) NOT NULL,
    tel_num         VARCHAR(255),
    comp_name       VARCHAR(255),
    location        VARCHAR(255),
    created_date    DATE,
    updated_date    DATE
);

CREATE TABLE ad_listing (
    id              SERIAL PRIMARY KEY,
    listing_name    VARCHAR(255) NOT NULL,
    owner           INT REFERENCES seller_account(id),
    created_date    DATE,
    updated_date    DATE,
    expiry_date     DATE,
    price           VARCHAR(50) NOT NULL,
    quantity        VARCHAR(50),
    header          VARCHAR(255),
    description     VARCHAR(1000) NOT NULL,
    location        VARCHAR(255),
    image_url       VARCHAR(255),
    category_id     INT REFERENCES category(id),
    active          BOOLEAN           
);  

CREATE TABLE category (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(150),
);