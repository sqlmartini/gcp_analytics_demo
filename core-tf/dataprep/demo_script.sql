CREATE TABLE dataprep_demo.patient_data (
  Patient_ID STRING,
  Condition STRING,
  Medication STRING,
  Dose_mg STRING,
  Height STRING,
  Birthdate STRING,
  Hospital STRING,
  Age STRING,
  Notes STRING,
  Hospital_ID INT64
);
CREATE TABLE dataprep_demo.hospital_data (
  Name STRING,
  ID INT64,
  Street_Address STRING,
  City_Address STRING,
  Bed_Capacity INT64
);
INSERT INTO dataprep_demo.hospital_data  
VALUES
  ('Seattle', 1, '4800 Sand Point Way NE','Seattle, WA 98105', 5500),
  ('San Francisco', 2, '1975 4th St', 'San Francisco, CA 94158', 3980),
  ('Oakland', 3, '747 52nd St', 'Oakland, CA 94609', 4235);
INSERT INTO dataprep_demo.patient_data  
VALUES
  ('P001', 'Asthma', 'Albuterol (inhaler)', '40 oz', '124.4 cm', '8/7/2016', 'Seattle', '7', '{"Notes": "Mild wheezing"}', 1),
  ('P001', 'Asthma', 'Ibuprofen (oral)', '400 oz', '4.08 ft', '2016-05-08', 'Seattle', '7', '{"Notes": "Joint pain"}', 1),
  ('P002', 'Asthma', 'Prednisone (oral)', '40 mg', '154.9 cm', '11/24/2012', 'San Francisco', '11', '{"Notes": "Follow up with PCP in 1 week"}', 2),
  ('P002', 'Asthma', 'Naprixen (oral)', '500 mg', '5.08 ft', '2012-11-24', 'San Francisco', '11', '{"Notes": "Follow up with rheumatologist in 2 months"}', 2),
  ('P003', 'bronchial asthma', 'Ipratropium (inhaler)', '400 oz', '162.6 cm', '1/13/2011', 'Oakland', '13', '{"Notes": "School nurse administered"}', 3),
  ('P003', 'Asthma', 'Sumatriptan (oral)', '50 mg', '5.33 ft', '2011-01-13', 'Oakland', '13', '{"Notes": "Taken at onset of symptoms"}', 3),
  ('P004', 'asthma', 'Magnesium Sulfate (IV)', '2000 mg', '164.1 cm', '5/7/2008', 'Seattle', '15', '{"Notes": "ER visit, severe exacerbation"}', 1),
  ('P004', 'Asthma', 'Excedrin Migraine (oral)', '250 mg', '5.38 ft', '2008-05-07', 'Seattle', '15', '{"Notes": "Over-the-counter medication"}', 1),
  ('P005', 'Asthma', 'Montelukast (oral)', '10 mg', '124.4 cm', '11/27/2016', 'San Francisco', '7', '{"Notes": "Daily maintenance medication"}', 2),
  ('P005', 'asthma', 'Hydrocortisone Cream', '50 oz', '4.08 ft', '2016-11-27', 'San Francisco', 'N/A', '{"Notes": "Apply twice daily"}', 2),
  ('P006', 'COPD', 'Tiotropium (inhaler)', '180 mg', '116.8 cm', '12/12/2017', 'Seattle', '6', '{"Notes": "Daily maintenance medication"}', 1),
  ('P006', 'COPD', 'Triamcinolone Cream (topical)', '50 oz', '3.83 ft', '2017-12-12', 'Seattle', '6', '{"Notes": "Prescription strength"}', 1),
  ('P007', 'COPD', 'Albuterol/Ipratropium (nebulizer)', '0.5 mg', '94 cm', '10/4/2020', 'Oakland', '3', '{"Notes": "Shortness of breath"}', 3),
  ('P007', 'COPD', 'Losartan (oral)', '50 mg', '3.08 ft', '2020-04-10', 'Oakland', '3', '{"Notes": "Blood levels monitored"}', 3),
  ('P008', 'COPD', 'Theophylline (oral)', '300 mg', '76.2 cm', '8/4/2022', 'Seattle', '1', '{"Notes": "Seasonal allergies"}', 1),
  ('P008', 'COPD', 'Hydrochlorothiazide (oral)', '25 mg', '2.5 ft', '2022-08-04', 'Seattle', '1', '{"Notes": "Finish full course of antibiotics"}', 1),
  ('P009', 'Allergy', 'Cetirizine (oral)', '10 oz', '116.8 cm', '12/12/2017', 'San Francisco', '6', '{"Notes": "Hives, itching"}', 2),
  ('P009', 'allergies', 'Ciprofloxacin (oral)', '500 mg', '3.83 ft', '2017-12-12', 'San Francisco', '6', '{"Notes": "Take with food"}', 2),
  ('P010', 'Allergies', 'Fexofenadine (oral)', '180 mg', '147.3 cm', '1/14/2014', 'Seattle (2)', '10', '{"Notes": "Allergic reaction to food"}', 1),
  ('P010', 'Allergy', 'Nitrofurantoin (oral)', '100 mg', '4.83 ft', '2014-01-14', 'Seattle (2)', '10', '{"Notes": "Take 30 minutes before bed"}', 1),
  ('P011', 'Allergies', 'Diphenhydramine (oral)', '50 mg', '86.4 cm', '12/21/2021', 'Oakland', '2', '{"Notes": "Fever, cough"}', 3),
  ('P011', 'Allergies', 'Melatonin (oral)', '5 mg', '2.83 ft', '2021-12-21', 'Oakland', '2', '{"Notes": "Short-term use only"}', 3),
  ('P012', 'Pneumonia', 'Amoxicillin (oral)', '500 mg', '164.1 cm', '8/2/2007', 'Seattle', '16', '{"Notes": "First dose of Z-Pak"}', 1),
  ('P012', 'Pneumonia', 'Zolpidem (oral)', '10 mg', '5.38 ft', '2007-08-02', 'Seattle', '16', '{"Notes": "Before breakfast"}', 1),
  ('P013', 'Pneumonia', 'Azithromycin (oral)', '500 mg', '124.4 cm', '9/3/2016', 'San Francisco', '7', '{"Notes": "Hospitalized"}', 2),
  ('P013', 'Pneumonia', 'Omeprazole (oral)', '20 mg', '4.08 ft', '2016-09-03', 'San Francisco', '7', '{"Notes": "Over-the-counter medication"}', 2),
  ('P014', 'Pneunonia', 'Levofloxacin (IV)', '750 mg', '132 cm', '2/16/2016', 'Seattle (2)', '8', '{"Notes": "Taken twice daily"}', 1),
  ('P014', 'Pneumonia', 'Ranitidine (oral)', '150 mg', '4.33 ft', '2016-02-16', 'Seattle', '8', '{"Notes": "Discuss side effects with oncologist"}', 1),
  ('P015', 'Diabetes', 'Metformin (oral)', '500 mg', '109.2 cm', '1/21/2019', 'Seattle', '5', '{"Notes": "Before breakfast"}', 1),
  ('P015', 'Diabetes', 'Tamoxifen (oral)', '20 mg', '3.58 ft', '2019-01-21', 'Seattle', '5', '{"Notes": "Chemotherapy infusion"}', 1),
  ('P016', 'diabetes mellitus', 'Insulin Lispro (injection)', '25 mg', '147.3 cm', '12/20/2013', 'Oakland', '10', '{"Notes": "Blood pressure monitoring"}', 3),
  ('P016', 'Diabetes', 'Paclitaxel (IV)', '8 oz', '4.83 ft', '2013-12-20', 'Oakland', '10', '{"Notes": "Daily medication"}', 3),
  ('P017', 'Hypertension', 'Lisinopril (oral)', '20 mg', '116.8 cm', '8/13/2017', 'Seattle (2)', '6', '{"Notes": "Daily medication"}', 1),
  ('P017', 'High blood pressure', 'Emtricitabine/Tenofovir (oral)', '200 mg', '3.83 ft', '2017-08-13', 'Seattle', '6', '{"Notes": "High-risk patient, early treatment"}', 1),
  ('P018', 'Hypertension', 'Amlodipine (oral)', '5 mg', '154.9 cm', '4/10/2012', 'San Francisco', '11', '{"Notes": "High-risk patient, early treatment"}', 2),
  ('P018', 'Hypertension', 'Dolutegravir (oral)', '50 mg', '5.08 ft', '2012-04-10', 'San Francisco', '11', '{"Notes": "Use twice daily"}', 2),
  ('P019', 'COPD', 'Tiotropium (inhaler)', '18 mg', '50.8 cm', '6/26/2023', 'Seattle', '0', '{"Notes": "Lifestyle changes also recommended"}', 1),
  ('P019', 'COPD', 'Losartan (oral)', '50 mg', '1.67 ft', '2023-06-26', 'Seattle', '0', '{"Notes": "Follow up appointment in 2 weeks."}', 1),
  ('P020', 'Allergies', 'Fluoxetiwe', '20 mg', '160 cm', '1/18/2012', 'Seattle', '12', '{"Notes": "Monitor blood pressure regularly."}', 1),
  ('P020', 'Allergies', 'Molnupiravir (oral)', '800 mg', '5.25 ft', '2012-01-18', 'Seattle', '12', '{"Notes": "Daily maintenance medication"}', 1),
  ('P021', 'Asthma', 'Salmeterol (inhaler)', '50 mg', '122.4 cm', '8/26/2016', 'San Francisco', '7', '{"Notes": "Wheezing after exercise"}', 2),
  ('P022', 'Prediabetes', 'Metformin (oral)', '850 mg', '170.2 cm', '7/31/2006', 'Oakland', '17', '{"Notes": "Follow up with pulmonologist in 3 months"}', 3),
  ('P064', 'Chronic Pain', 'Gabapentin (oral)', '97 mg', '136 cm', '7/5/2012', 'San Francisco (2)', '11', '{"Notes": "Preventative for infection"}', 2),
  ('P064', 'Shingles', 'Gabapentin (oral)', '97 mg', '4.33 ft', '2012-07-05', 'San Francisco (2)', '11', '{"Notes": "School nurse administered during recess"}', 2),
  ('P023', 'bronchial asthma', 'Fluticasone Propionate (inhaler)', '110 mg', '132.0 cm', '10/21/2015', 'Oakland', '8', '{"Notes": "Daily maintenance medication"}', 3),
  ('P024', 'Asthma', 'Budesonide (inhaler)', '180 mg', '124.4 cm', '8/25/2016', 'San Francisco', '7', '{"Notes": "Hospitalized"}', 2),
  ('P025', 'COPD', 'Roflumilast (oral)', '500 mg', '100.2 cm', '5/24/2017', 'Seattle', '6', '{"Notes": "Seasonal allergies"}', 1),
  ('P026', 'COPD', 'Azithromycin (oral)', '250 mg', '98.8 cm', '9/15/2017', 'San Francisco (2)', '6', '{"Notes": "Treatment for Pink Eye"}', 2),
  ('P027', 'Asthma', 'Levalbuterol (inhaler)', '45 mg', '152.4 cm', '06/25/2014', 'Oakland', '10', '{"Notes": "None"}', 3),
  ('P028', 'COPD', 'Salmeterol/Fluticasone (inhaler)', '250 mg', '3.83 ft', '11/01/2017', 'Seattle', '6', '{"Notes": "Treatment for Common Cold"}', 1),
  ('P029', 'Pneumonia', 'Ceftriaxone (IV)', '2000 mg', '4.33 ft', '04/11/2016', 'San Francisco', '8', '{"Notes": "Treatment for Fever"}', 2),
  ('P030', 'Allergies', 'Loratadine (oral)', '10 mg', '91.4 cm', '06/03/2020', 'Oakland', '3', '{"Notes": "Follow up appointment in 2 weeks."}', 3),
  ('P053', 'Pink Eye', 'Ofloxacin (eye drops)', '744 mg', '102.3 cm', '2013-09-29', 'Seattle', '11', '{"Notes": "Monitor blood pressure regularly."}', 2),
  ('P068', 'Asthma', 'Albuterol (inhaler)', '0 mg', '176.7 cm', '2012-11-14', 'Oakland', '12', '{"Notes": "Daily maintenance medication"}', 2),
  ('P032', 'Common Cold', 'Guaifenesin (oral)', '495 mg', '64.2 cm', '2013-12-11', 'Seattle', '10', '{"Notes": "Wheezing after exercise"}', 3),
  ('P079', 'Fever', 'Acetaminophen (oral)', '949 mg', '74.7 cm', '2017-02-27', 'San Francisco', '6', '{"Notes": "Follow up with pulmonologist in 3 months"}', 2);