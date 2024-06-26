-- CREATE LOG TABLE (TITLE PAGE IN SHEET)

CREATE TABLE CommentLog (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    comments VARCHAR(1000)

);

-- CREATE INSTRUMENT CALIBRATION CHECK TABLES

CREATE TABLE InstrumentCalibrationMeasurement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    calibration_sample_measured_date DATE,

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,  
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT
);

CREATE TABLE InstrumentCalibrationCertifiedReference (
    id INT AUTO_INCREMENT PRIMARY KEY,
    certification_date DATE,

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT
);

-- CREATING WITNESS SAMPLE TABLES

CREATE TABLE PrimaryWitnessSample (
    id INT AUTO_INCREMENT PRIMARY KEY,
    segment_id INT,
    mirror_type INT,
    witness_measured_date DATE,
    install_date DATE,
    to_telescope INT, 
    to_segment_position INT,

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT,
    
    notes VARCHAR(255)

);


CREATE TABLE SecondaryWitnessSample (
    id INT AUTO_INCREMENT PRIMARY KEY,
    secondary_number VARCHAR(1),
    witness_measured_date DATE,
    install_date DATE,
    to_telescope INT,
    to_segment_position INT,
    -- null ??

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT,

    notes VARCHAR(255)

);


CREATE TABLE TertiaryWitnessSample (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tertiary_number VARCHAR(1),
    witness_measured_date DATE,
    install_date DATE,
    to_telescope INT,
    to_segment_position INT,
    -- null ??

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT,

    notes VARCHAR(255)

);

-- CREATINT OPTICAL SURFACE TABLES

CREATE TABLE PrimaryOpticalSurface (
    id INT AUTO_INCREMENT PRIMARY KEY,
    segment_id INT,
    mirror_type INT,
    measured_date DATE,
    install_date DATE,
    from_telescope INT,
    from_segment_position INT,

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT,

    notes VARCHAR(255),
    is_deleted BOOLEAN

);

CREATE TABLE SecondaryOpticalSurface (
    id INT AUTO_INCREMENT PRIMARY KEY,
    secondary_number INT,
    measured_date DATE,
    install_date DATE,
    from_telescope INT,
    from_segment_position INT,

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT,

    notes VARCHAR(255),
    is_deleted BOOLEAN

);

CREATE TABLE TertiaryOpticalSurface (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tertiary_number INT,
    measured_date DATE,
    install_date DATE,
    from_telescope INT,
    from_segment_position INT,

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT,

    notes VARCHAR(255),
    is_deleted BOOLEAN

);

CREATE TABLE MirrorBarnPrimary (
    id INT AUTO_INCREMENT PRIMARY KEY,
    segment_id INT,
    mirror_type INT,
    measured_date DATE,
    install_date DATE,
    from_telescope INT,
    from_segment_position INT,

    T400_540 FLOAT,
    D400_540 FLOAT,
    S400_540 FLOAT,

    T480_600 FLOAT,
    D480_600 FLOAT,
    S480_600 FLOAT,

    T590_720 FLOAT,
    D590_720 FLOAT,
    S590_720 FLOAT,

    T900_1100 FLOAT,
    D900_1100 FLOAT,
    S900_1100 FLOAT,

    notes VARCHAR(255)

);