-- Insert company tracker data
USE admin_placement_db;

-- Clear old company data first
DELETE FROM drive_data;

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Verity Knowledge Solutions', 'Drive 1', 'Analyst', 'FTE', 'Analytics', '["BA-Economics","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Economics_Statistics"]',
 '', '', '', 'Process complete', 5, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Bain & Co.', 'Drive 1', 'Analyst', 'FTE', 'Analytics', '["BA-Economics","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BSc-Economics_Statistics"]',
 'Raunak', 'Raunak.Sinha@bain.com', '', 'Process complete', 3, 'Asgar ');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('KPMG Global', 'Drive 1', 'Audit Associate ', 'FTE', 'BFSI', '["BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Accenture', 'Drive 1', 'HR', 'FTE', 'HR', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', 'divita.a.gupta@accenture.com', '', 'Process complete', 4, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Teach for India', 'Drive 1', 'Fellowship', 'FTE', 'Ed & Teaching', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Rippling', 'Drive 1', 'Customer Support Specialist', 'FTE', 'Customer/Client Service', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'On hold/Called off', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Embark', 'Drive 1', 'Management Trainee ', 'Internship + PPO', 'Ops & Management', '["BA-Communicative English_Psychology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","Master of Business Administration","MSc-Psychology"]',
 'chiraag.s@embarkgcc.com', '9880855088', '', 'Process complete', 5, 'Madiha');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
(' Bambinos.live', 'Drive 1', 'Business Development Associate', 'FTE', 'Sales , Marketing, BD ', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 'Leznaik', 'lezniak@bambinos.live/ 7994876082', '', 'Process complete', 11, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Deloitte India', 'Drive 1', 'Web Developer', 'FTE', 'IT', '["BSc-Computer Science_Mathematics","BSc-Data Science","Bachelor of Computer Applications"]',
 '', '', '', 'On hold/Called off', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Axtria', 'Drive 1', 'Analyst Trainee', 'FTE', 'Analytics', '["BSc-Computer Science_Mathematics","BSc-Data Science","Bachelor of Computer Applications"]',
 'Jaspreet', 'Joginder.Tuteja@axtria.com/8638931306', '', 'No selects', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Deutsche Bank', 'Drive 1', 'Operations', 'FTE', 'Ops & Management', '["BA-Economics","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', 'Process complete', 20, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('KALVIUM', 'Drive 1', 'Founders Office Intern - Growth', 'Internship + PPO', 'Consulting', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Accenture ', 'Drive 1', 'S&C Delivery Associate', 'FTE', 'Consulting', '["MA-Economics","MA-English","MA-Public Policy","MSc-Psychology"]',
 '', '', '', 'Process complete', 1, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Cognizant ', 'Drive 1', 'Analyst Trainee', 'FTE', 'BFSI', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', 'AKrishna.Priya@cognizant.com', 'Annie ma''am is following up', 'Ongoing', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('EY GDS', 'Drive 1', 'Data Operations Analyst', 'FTE', 'Analytics', '["BBA-Business Analytics","BSc-Data Science","Bachelor of Computer Applications"]',
 '', '', '', 'Process complete', 10, 'Madiha');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Schneider Electric', 'Drive 1', ' Graduate Engineer', 'Internship + PPO', 'IT', '["BSc-Computer Science_Mathematics","BSc-Data Science","Bachelor of Computer Applications"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Schneider Electric', 'Drive 1', 'Master Trainee', 'Internship + PPO', 'Ops & Management', '["Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Springdays School', 'Drive 1', 'EDUCATOR', 'FTE', 'Ed & Teaching', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Ongoing', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('EY GDS', 'Drive 2', 'Assurance AOA', 'FTE', 'BFSI', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","MA-Economics","MA-English","MA-Public Policy","Master of Business Administration","MCom-Financial Analysis","MCom-General","MCom-International Business"]',
 '', '', '', 'Process complete', 1, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('EY GDS', 'Drive 2', 'Assurance Core Audit', 'FTE', 'BFSI', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","Master of Business Administration","MCom-Financial Analysis","MCom-General","MCom-International Business"]',
 '', '', '', 'Process complete', 24, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('EY GDS', 'Drive 2', 'Tax Core', 'FTE', 'BFSI', '["BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","Master of Business Administration","MCom-Financial Analysis"]',
 '', '', '', 'Process complete', 17, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('EY GDS', 'Drive 2', 'Tax EMS', 'FTE', 'BFSI', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management"]',
 '', '', '', 'Process complete', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Fortune Business Systems', 'Drive 1', 'Data Science Engineer', 'FTE', 'IT', '["BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Mathematics_Physics","BSc-Data Science","Bachelor of Computer Applications","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Mathematics","Master of Computer Applications"]',
 '', '', 'Sir will follow up', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Bluevine', 'Drive 1', 'Rotational Sales Executive', 'FTE', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 'Sidharth', 'richa.nigam@bluevine.com/7982090983', 'Process in Jan', 'Ongoing', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Ditto Insurance ', 'Drive 1', 'Insurance Advisor - Falcon', 'FTE', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Process complete', 1, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Ditto Insurance ', 'Drive 1', 'Insurance Advisor - Bliss', 'FTE', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Ditto Insurance ', 'Drive 1', 'Quality Associate', 'FTE', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Process complete', 3, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Eli Lilly', 'Drive 1', 'Intern - Global Learning & Content Services', 'Internship + PPO', 'Media & Content', '["BA-Communicative English_Psychology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BA-Communication Studies","BA-Journalism & Mass Communication","BA-Psychology","MA-English","MSc-Psychology"]',
 '', '', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Eli Lilly', 'Drive 1', 'Intern - Commercial Learning Services Writer', 'Internship + PPO', 'Media & Content', '["BA-Communicative English_Psychology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BA-Communication Studies","BA-Journalism & Mass Communication","BA-Psychology","MA-English"]',
 '', '', '', 'Process complete', 5, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Nupore Filtrations', 'Drive 1', 'Business Development Executive', 'Internship + PPO', 'Sales, Marketing, BD', '["MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Life Science"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('NASDAQ  ', 'Drive 1', 'Intern', 'Internship + PPO', '', '["MSc-Computer Science (Data Science Specialization)"]',
 '', '', '', 'On hold/Called off', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Sakha', 'Drive 1', 'Science Educator', 'FTE', 'Ed & Teaching', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'No selects', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Sakha', 'Drive 1', 'Maths Educator', 'FTE', 'Ed & Teaching', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'No selects', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Social Panga', 'Drive 1', 'Copywriting', 'FTE', 'Media & Content', '["BA-Communicative English_Psychology","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Travel & Tourism_Journalism","BA-Communication Studies","BA-Journalism & Mass Communication","BBA-Branding & Advertising","BBA-Regular","MA-English"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Social Panga', 'Drive 1', 'Brand Solutions', 'FTE', 'Media & Content', '["BA-Communicative English_Psychology","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Travel & Tourism_Journalism","BA-Communication Studies","BA-Journalism & Mass Communication","BBA-Branding & Advertising","BBA-Regular","MA-English"]',
 '', '', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('KPMG India', 'Drive 1', ' GRCS FS - Analyst', 'FTE', '', '["BA-Psychology_Economics","BA-Economics","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Economics_Statistics"]',
 '', '', '', 'Process complete', 4, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Policybazaar', 'Drive 1', 'Relationship Manager', 'FTE', 'BFSI', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'No selects', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Safesforce', 'Drive 1', 'Technical Writing Analyst', 'FTE', 'Analytics', '["BA-Communicative English_Psychology","BA-Psychology_English Literature","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BSc-Economics_Statistics"]',
 '', '', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Goldman Sachs ', 'Drive 1', 'Analyst', 'Internship + PPO', 'Analytics', '["BA-Economics","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', '', '', 'Process complete', 10, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('RSM USI', 'Drive 1', 'Audit Associate', 'FTE', 'BFSI', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', 'Process complete', 9, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Arcesium', 'Drive 1', 'Financial Operations', 'Internship + PPO', 'BFSI', '["BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 'Patnaika', 'fatimasy@arcesium.com/ 9643417908', '', 'Process complete', 3, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Acies Global ', 'Drive 1', 'Associate Trainee', 'Internship + PPO', 'Analytics', '["BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Mathematics_Physics","BSc-Data Science","Bachelor of Computer Applications","MSc-Computer Science (Data Science Specialization)","MSc-Mathematics","Master of Computer Applications"]',
 '', 'nidhi.sooda@aciesglobal.com', '', 'Process complete', 1, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('JPMorgan Chase & Co', 'Drive 1', 'Operation Analyst ', 'FTE', 'BFSI', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', '', '', 'Process complete', 8, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('VFM Systems & Services', 'Drive 1', 'Management Trainee Intern', 'Internship + PPO', '', '["Master of Business Administration"]',
 '', '', '', 'No applicants', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Compulease Networks', 'Drive 1', 'Inside Sales Specialist', 'FTE', 'Sales, Marketing, BD', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 'Aakash', 'akash@rentalnetworks.com/99-8680-4323', 'Interviews going on', 'Process complete', 1, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Compulease Networks', 'Drive 1', 'Key Account Managers', 'FTE', 'Sales, Marketing, BD', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Process complete', 1, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('MakeMyTrip', 'Drive 1', 'Business Development Manager (RL2 Level)', 'FTE', 'Sales, Marketing, BD', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', '', 'No selects', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('KPMG Global', 'Drive 2', 'Audit Associate', '', '', '["BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', 'Ongoing', 7, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Edmingle', 'Drive 1', 'Associate Account Executive - I - Sales', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Edmingle', 'Drive 1', 'Customer Success Executive ', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Consilio', 'Drive 1', 'Associate, Strategic Clients Solutions', 'FTE', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', 'Blacklist', 'On hold/Called off', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Consilio', 'Drive 1', 'Specialist - HR', '', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', '', 'On hold/Called off', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Consilio', 'Drive 1', 'Premier Support ', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', 'On hold/Called off', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Morgan Stanley ', 'Drive 1', 'Operations - Apprenticeship program', 'Apprentice', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Grant Thornton ', 'Drive 1', 'Analyst', '', '', '["BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', 'Process complete', 7, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Seekho', 'Drive 1', 'Growth Marketing Interns', 'Internship + PPO', '', '["Master of Business Administration"]',
 '', '', '', 'Ongoing', 0, 'Asgar');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Seekho', 'Drive 1', 'Social Media Interns', '', '', '["Master of Business Administration"]',
 '', '', '', 'Ongoing', 0, 'Asgar');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Seekho', 'Drive 1', 'Founder’s Office Interns', '', '', '["Master of Business Administration"]',
 '', '', '', 'Ongoing', 0, 'Asgar');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('WPA', 'Drive 1', 'Knowledge Process Associate (Temp)', 'FTE', '', '["BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Food Science & Nutrition","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Food Science & Nutrition","MSc-Life Science"]',
 '', '', '', 'On hold/Called off', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('WISSDA', 'Drive 1', ' Marketing & SEO Associate (Entry-Level)', 'Internship + PPO', '', '["MA-English","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', 'less applicants', 'No selects', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Cognizant ', 'Drive 2', ' Programmer Analyst Trainee - Technical Writer', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","MA-Economics","MA-English","MA-Public Policy"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('KPMG India', 'Drive 2', ' Analyst', 'FTE', '', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Warm Table Technologies', 'Drive 1', 'Food Technologist Intern', 'Internship + PPO', '', '["BSc-Food Science & Nutrition","MSc-Food Science & Nutrition"]',
 '', '', 'sent mail 17/12', 'Ongoing', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Paper Boat', 'Drive 1', 'Assistant Brand Manager', 'FTE', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', '', 'Blacklisted', 'On hold/Called off', 0, 'Asgar');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
(' Learning Routes Pvt', 'Drive 1', 'Sales Associate', '', '', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 'Aashi Jain', 'campusplacements@learningroutes.in/ 85279 44255', '', 'Process complete', 4, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('SmartQ ', 'Drive 1', 'Human Resources - Talent Transformation Intern ', 'Internship + PPO', '', '["Master of Business Administration"]',
 '', '', '', 'Ongoing', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Javelin Global Commodities', 'Drive 1', 'Operations Analyst', '', '', '["BA-Political Science_Economics","BA-Psychology_Economics","BA-Economics","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Economics_Statistics"]',
 '', '', '', 'Yet to start', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Baker Tilly One India', 'Drive 1', 'Junior Associate – Tax', '', '', '["BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 'Shivam', 'Shivam.Mantry@bakertilly.com/ 7795779901', '', 'Process complete', 9, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('IIMBx', 'Drive 1', 'Associate Content Production', 'FTE', 'Media & Content', '["MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MSc-Psychology"]',
 '', '', 'Results awaited', 'Ongoing', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('First Steps School', 'Drive 1', 'AI Teacher', '', '', '["BSc-Computer Science_Mathematics","BSc-Data Science","Bachelor of Computer Applications","MSc-Computer Science (Data Science Specialization)","Master of Computer Applications"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('First Steps School', 'Drive 1', 'English Teacher', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","MA-English"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('First Steps School', 'Drive 1', 'French Teacher', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', '', '', 'Ongoing', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Societe Generale', 'Drive 1', 'Analyst', '', '', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('GrowthSchool', 'Drive 1', ' Graduate Trainee', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Breathe ESG', 'Drive 1', 'Sales Development Representative', '', '', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 'Vanshika', 'vanshika@breatheesg.com', '', 'Process complete', 2, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('TNS India Foundation (TNSIF)', 'Drive 1', ' Program Specialist – Training (Soft Skills Trainer)', 'FTE', 'Ed & Teaching', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', 'list of applicants sent- 17/12', 'Yet to start', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Target ', 'Drive 1', 'Apprenticeship Program', 'Apprentice', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Yet to start', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('TopHire', 'Drive 1', ' TA Associate ', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('TopHire', 'Drive 1', 'TA Associate II', '', '', '["All UG & PG"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Xanadu Realty ', 'Drive 1', ' Management Trainee', '', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Syngene International Limited ', 'Drive 1', ': QCM Support (Water and Environmental Monitoring Sampling)', '', '', '["BSc-Biochemistry","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology"]',
 '', '', 'Interviews rescheduled', 'Ongoing', 0, 'Annie');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Reo.Dev', 'Drive 1', 'SDR | B2B Saas Business Development', 'Internship + PPO', '', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BSc-Data Science","Bachelor of Computer Applications","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MSc-Computer Science (Data Science Specialization)","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Jaro Education', 'Drive 1', 'Graduate Trainee ', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Jaro Education', 'Drive 1', 'Management Trainee ', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', 'Process complete', 1, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('D.E. Shaw', 'Drive 1', 'Associate Quality Assurance Engineer (QAE)', 'FTE', 'IT', '["BSc-Computer Science_Mathematics","BSc-Data Science","Bachelor of Computer Applications"]',
 '', '', '', 'No selects', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Cyfuture', 'Drive 1', 'Management Trainee – IT / Cloud Sales', '', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MSc-Computer Science (Data Science Specialization)","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Adecco Group', 'Drive 1', 'Trainee - HR', '', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', 'Bansika.Sinha@adecco.com', '', 'No selects', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Deloitte India ', 'Drive 1', ' Operate - Associate Analyst', '', '', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', 'Process complete', 9, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('TCS', 'Drive 1', 'TCS Ignite and Smart Hiring', '', '', '["BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Mathematics_Physics","BSc-Data Science","Bachelor of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('QiWorks Creations Pvt Ltd.', 'Drive 1', 'Content Marketer', 'Internship + PPO', 'Media & Content', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('QiWorks Creations Pvt Ltd.', 'Drive 1', 'Account Manager', 'Internship + PPO', 'Media & Content', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
(' TNS India Foundation', 'Drive 1', 'Program Specialist – Finance Trainer', '', '', '["MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 'Riya Kumari', 'rkumari@tnsif.org/8657940117 ', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('TCS', 'Drive 2', 'Related to Analytics & Business Consulting', 'FTE', 'Analytics', '["MA-Economics","MSc-Mathematics"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('AtkinsRéalis', 'Drive 1', 'Graduate Engineer – Bilingual (French/English)', '', '', '["BA-Political Science_Economics","BA-Psychology_Economics","BA-Economics","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Economics_Statistics"]',
 'Sachin C S', 'CS.Sachin@atkinsrealis.com/8045669064', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Century real estate holdings', 'Drive 1', 'Management Trainee ', '', '', '["MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 'Priyanka Bhat', '86181 13976/priyankabhatt@centuryrealestate.in', '', 'No selects', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Plum', 'Drive 1', 'Customer Success Executive', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('KPMG India', 'Drive 2', 'Analyst -Managed Service', '', '', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Evolve Back (Orange County)', 'Drive 1', 'Sales Executive', 'FTE', '', '["BA-History_Travel Tourism","BVoc-Hospitality and Tourism","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', 'Process complete', 3, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Dell Technologies ', 'Drive 1', 'Purchasing Analyst', '', '', '["MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Adecco India', 'Drive 1', 'Finance Trainee', '', '', '["Master of Business Administration","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', 'Process complete', 7, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Accenture India', 'Drive 1', ' Business Advisory Associate ', '', '', '["BA-Political Science_Economics","BA-Psychology_Economics","BA-Economics","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Economics_Statistics","MA-Economics","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
(' YantraLive ', 'Drive 1', 'Program Management Intern — Founder’s Office', 'Internship + PPO', '', '["Master of Business Administration"]',
 'Niranjan', 'niranjan.ravindra@yantralive.com/9632052862', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Zopsmart', 'Drive 1', 'Scrum Master', 'Internship + PPO', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MSc-Computer Science (Data Science Specialization)","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Policy Bazar', 'Drive 1', 'Relationship Manager - Field Sales (Male Candidates only)', 'FTE', 'BFSI', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('AuthenticOne', 'Drive 1', 'Security Operations Center  Intern', '', '', '["BSc-Computer Science_Mathematics","BSc-Data Science","Bachelor of Computer Applications","MSc-Computer Science (Data Science Specialization)","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('AuthenticOne', 'Drive 1', 'VAPT Security Analyst Intern', '', '', '["BSc-Computer Science_Mathematics","BSc-Data Science","Bachelor of Computer Applications","MSc-Computer Science (Data Science Specialization)","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('AuthenticOne', 'Drive 1', 'Governance Risk Compliance Intern', '', '', '["Master of Business Administration"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('AuthenticOne', 'Drive 1', 'Sales Development Representative Intern', '', '', '["Master of Business Administration"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Progress', 'Drive 1', 'AI Augmented Content & Communication Specialist Intern', 'Internship', 'IT', '["MSc-Computer Science (Data Science Specialization)","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Progress', 'Drive 2', 'AI Augmented Content & Communication Specialist Intern', 'Internship', 'IT', '["MSc-Computer Science (Data Science Specialization)","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Microland', 'Drive 1', 'Graduate Trainee', 'Apprentice', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Torque Communications', 'Drive 1', ' PR Management Trainee', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","MA-Economics","MA-English","MA-Public Policy"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Joveo', 'Drive 1', 'Business Associate – Partnerships', 'Internship + PPO', '', '["Master of Business Administration"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Karanji', 'Drive 1', 'Intern-Management Trainee (Sales Manager)', 'Internship + PPO', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Karanji', 'Drive 1', 'Intern- Management Trainee (Pre-Sales & Lead Generation)', 'Internship + PPO', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Great Learning', 'Drive 1', 'Learning Consultant', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Airbus India', 'Drive 1', 'HR Intern', 'Internship', 'HR', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('AML RightSource', 'Drive 1', 'Associate Analyst-1', '', '', '["BA-Political Science_Economics","BA-Psychology_Economics","BA-Economics","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Economics_Statistics","MA-Economics","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('MNP SPARK', 'Drive 1', ' Associate Accountant', '', '', '["BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Kempegowda International Airport - Bengaluru', 'Drive 1', 'Brand Ambassador (Intern)', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Codeyoung', 'Drive 1', 'International Sales Specialist- US Shift', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Codeyoung', 'Drive 1', 'Associate Customer Experience - US Shift', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Simplotel', 'Drive 1', 'Content Operations Specialist', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Simplotel', 'Drive 1', 'Content Specialist', '', '', '["BA-Communicative English_Psychology","BA-History_Political Science","BA-History_Travel Tourism","BA-Political Science_Economics","BA-Political Science_Sociology","BA-Psychology_Economics","BA-Psychology_English Literature","BA-Psychology_Journalism","BA-Psychology_Sociology","BA-Travel & Tourism_Journalism","BVoc-Hospitality and Tourism","BA-Communication Studies","BA-Economics","BA-Journalism & Mass Communication","BA-Psychology","BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","BSc-Biochemistry","BSc-Botany_Microbiology","BSc-Botany_Zoology","BSc-Chemistry_Biotechnology","BSc-Chemistry_Microbiology","BSc-COMPOSITE HOME SCIENCE","BSc-Computer Science_Mathematics","BSc-Economics_Statistics","BSc-Environmental Science & Sustainability_Life Sciences","BSc-Mathematics_Physics","BSc-Microbiology_Zoology","BSc-Nutrition & Dietetics_Human Development","BSc-Zoology_Biotechnology","BSc-Biotechnology","BSc-Data Science","BSc-Fashion and Apparel Design","BSc-Food Science & Nutrition","BSc-Interior Design & Management","Bachelor of Computer Applications","MA-Economics","MA-English","MA-Public Policy","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce","MSc-Biochemistry","MSc-Biotechnology","MSc-Botany","MSc-Chemistry","MSc-Computer Science (Data Science Specialization)","MSc-Electronics","MSc-Food Science & Nutrition","MSc-Life Science","MSc-Mathematics","MSc-Psychology","MSc-Human Development","Master of Computer Applications"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Aurigo Software Technologies', 'Drive 1', 'HR Intern', 'Internship + PPO', 'HR', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MSc-Psychology"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Crane Consulting Outsourcing Pvt. Ltd. ', 'Drive 1', 'Process Associate Mortgage', 'FTE', 'BFSI', '["BBA-Branding & Advertising","BBA-Business Analytics","BBA-Regular","BCom-Business Process Services","BCom-Corporate Finance","BCom-General","BCom-Industry Integrated","BCom-International Accounting and Finance","BCom-Professional","BCom-Strategic Finance","BCom-Tourism and Travel Management","PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics","MCom-Financial Analysis","MCom-General","MCom-International Business","One Year Masters Degree In Commerce"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Syngene International Limited', 'Drive 1', 'RD Team - Interns', 'Internship + PPO', '', '["MSc-Chemistry"]',
 '', '', '', '', 0, '');

INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('Care Health Insurance Limited', 'Drive 1', 'Key Account Manager - Corporate Sales', '', '', '["PG Diploma in Business Applications","PG Diploma in Business Intelligence and Analytics","Master of Business Administration","PG Diploma in Management Analytics"]',
 '', '', '', '', 0, '');


SELECT 'Company tracker import completed!' AS Status, COUNT(*) AS TotalRecords FROM drive_data;
