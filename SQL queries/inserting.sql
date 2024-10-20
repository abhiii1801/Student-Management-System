INSERT INTO Departments (department_id,department_name, department_head)
VALUES 
('CS','Computer Science', 1),
('BA','Business Administration', 2),
('PS','Psychology', 3),
('MA','Mathematics', 4),
('HI','History', 5);

INSERT INTO Courses (course_id, course_name, course_desc, credits)
VALUES
('CS101', 'Bachelor of Computer Science', 'Intro to computing and software development.', 120),
('BA101', 'Bachelor of Business Administration', 'Study of management, finance, and marketing.', 120),
('PSY101', 'Bachelor of Psychology', 'Study of human behavior and mind.', 120),
('MAT101', 'Bachelor of Mathematics', 'Focus on advanced mathematical theories and applications.', 120),
('HIS101', 'Bachelor of History', 'Study of historical events and interpretations.', 120);

INSERT INTO Subjects (subject_id, subject_name, subject_desc, credits)
VALUES
('CS201', 'Introduction to Programming', 'Basics of programming using Python.', 4),
('CS202', 'Data Structures', 'Study of data structures like arrays, stacks, and queues.', 4),
('CS203', 'Database Systems', 'Introduction to relational databases and SQL.', 4),
('CS204', 'Operating Systems', 'Study of OS concepts like processes and memory management.', 4),
('CS205', 'Algorithms', 'Design and analysis of algorithms.', 4),
('CS206', 'Web Development', 'Frontend and backend web development basics.', 4);

INSERT INTO Subjects (subject_id, subject_name, subject_desc, credits)
VALUES
('BA201', 'Introduction to Management', 'Basic principles of management.', 4),
('BA202', 'Financial Accounting', 'Introduction to financial accounting.', 4),
('BA203', 'Marketing Principles', 'Study of marketing concepts and strategies.', 4),
('BA204', 'Organizational Behavior', 'Understanding human behavior in organizations.', 4),
('BA205', 'Business Ethics', 'Study of ethical issues in business.', 4),
('BA206', 'Economics', 'Micro and macroeconomic principles.', 4);

INSERT INTO Subjects (subject_id, subject_name, subject_desc, credits)
VALUES
('PSY201', 'Cognitive Psychology', 'Study of cognitive processes.', 4),
('PSY202', 'Developmental Psychology', 'Study of psychological growth over a lifespan.', 4),
('PSY203', 'Abnormal Psychology', 'Study of abnormal behavior and mental disorders.', 4),
('PSY204', 'Social Psychology', 'Study of how people influence each other.', 4),
('PSY205', 'Personality Psychology', 'Study of individual personality traits.', 4),
('PSY206', 'Research Methods in Psychology', 'Introduction to research methods and statistics.', 4);

INSERT INTO Subjects (subject_id, subject_name, subject_desc, credits)
VALUES
('MAT201', 'Calculus I', 'Introduction to differential and integral calculus.', 4),
('MAT202', 'Linear Algebra', 'Study of vector spaces and linear equations.', 4),
('MAT203', 'Discrete Mathematics', 'Mathematics for computer science and logic.', 4),
('MAT204', 'Probability and Statistics', 'Introduction to probability and statistics.', 4),
('MAT205', 'Abstract Algebra', 'Study of groups, rings, and fields.', 4),
('MAT206', 'Numerical Methods', 'Study of numerical techniques for solving equations.', 4);

INSERT INTO Subjects (subject_id, subject_name, subject_desc, credits)
VALUES
('HIS201', 'World History', 'Study of global historical events.', 4),
('HIS202', 'Modern History', 'Historical events from the 19th century to present.', 4),
('HIS203', 'Ancient Civilizations', 'Study of early human societies.', 4),
('HIS204', 'Medieval History', 'Study of the Middle Ages.', 4),
('HIS205', 'History of Art', 'Exploration of art movements throughout history.', 4),
('HIS206', 'History of Philosophy', 'Study of philosophical thought and its impact on history.', 4);


INSERT INTO Students (first_name, last_name, gender, email, phone, dob, address)
VALUES 
('Abhinav', 'Tomar', 'M', 'abhinav.tomar@email.com', '9671993553', '2006-01-18', 'Sonepat, Haryana'),
('Aarav', 'Patel', 'M', 'aarav.patel@email.com', '9876543210', '2000-05-15', 'Mumbai, Maharashtra'),
('Diya', 'Sharma', 'F', 'diya.sharma@email.com', '8765432109', '2001-08-22', 'Delhi, Delhi'),
('Arjun', 'Kumar', 'M', 'arjun.kumar@email.com', '7654321098', '1999-11-30', 'Bangalore, Karnataka'),
('Ananya', 'Singh', 'F', 'ananya.singh@email.com', '6543210987', '2002-02-14', 'Kolkata, West Bengal'),
('Vivaan', 'Gupta', 'M', 'vivaan.gupta@email.com', '5432109876', '2000-07-07', 'Chennai, Tamil Nadu'),
('Aisha', 'Reddy', 'F', 'aisha.reddy@email.com', '4321098765', '2001-04-19', 'Hyderabad, Telangana'),
('Rohan', 'Joshi', 'M', 'rohan.joshi@email.com', '3210987654', '1999-09-03', 'Pune, Maharashtra'),
('Zara', 'Kapoor', 'F', 'zara.kapoor@email.com', '2109876543', '2002-01-11', 'Ahmedabad, Gujarat'),
('Vihaan', 'Malhotra', 'M', 'vihaan.malhotra@email.com', '1098765432', '2000-06-26', 'Jaipur, Rajasthan'),
('Saanvi', 'Choudhury', 'F', 'saanvi.choudhury@email.com', '9876543211', '2001-12-08', 'Lucknow, Uttar Pradesh'),
('Advait', 'Saxena', 'M', 'advait.saxena@email.com', '8765432110', '1999-03-17', 'Chandigarh, Punjab'),
('Myra', 'Trivedi', 'F', 'myra.trivedi@email.com', '7654321099', '2002-10-29', 'Bhopal, Madhya Pradesh'),
('Reyansh', 'Verma', 'M', 'reyansh.verma@email.com', '6543210988', '2000-08-05', 'Patna, Bihar'),
('Ishaan', 'Mehra', 'M', 'ishaan.mehra@email.com', '5432109877', '2001-01-23', 'Surat, Gujarat'),
('Anika', 'Desai', 'F', 'anika.desai@email.com', '4321098766', '1999-07-12', 'Nagpur, Maharashtra'),
('Kabir', 'Bose', 'M', 'kabir.bose@email.com', '3210987655', '2002-04-02', 'Indore, Madhya Pradesh'),
('Riya', 'Chakraborty', 'F', 'riya.chakraborty@email.com', '2109876544', '2000-11-18', 'Thane, Maharashtra'),
('Arnav', 'Nair', 'M', 'arnav.nair@email.com', '1098765433', '2001-05-30', 'Kochi, Kerala'),
('Avni', 'Rao', 'F', 'avni.rao@email.com', '9876543212', '1999-02-09', 'Visakhapatnam, Andhra Pradesh'),
('Yash', 'Mehta', 'M', 'yash.mehta@email.com', '8765432111', '2002-09-14', 'Coimbatore, Tamil Nadu'),
('Prisha', 'Gandhi', 'F', 'prisha.gandhi@email.com', '7654321100', '2000-12-03', 'Vadodara, Gujarat'),
('Dhruv', 'Chopra', 'M', 'dhruv.chopra@email.com', '6543210989', '2001-07-16', 'Ludhiana, Punjab'),
('Aadhya', 'Banerjee', 'F', 'aadhya.banerjee@email.com', '5432109878', '1999-04-28', 'Agra, Uttar Pradesh'),
('Veer', 'Khanna', 'M', 'veer.khanna@email.com', '4321098767', '2002-11-09', 'Nashik, Maharashtra'),
('Kyra', 'Mukherjee', 'F', 'kyra.mukherjee@email.com', '3210987656', '2000-02-22', 'Faridabad, Haryana'),
('Aadi', 'Sinha', 'M', 'aadi.sinha@email.com', '2109876545', '2001-09-05', 'Meerut, Uttar Pradesh'),
('Kiara', 'Rajput', 'F', 'kiara.rajput@email.com', '1098765434', '1999-06-18', 'Rajkot, Gujarat'),
('Atharv', 'Mahajan', 'M', 'atharv.mahajan@email.com', '9876543213', '2002-03-01', 'Varanasi, Uttar Pradesh'),
('Navya', 'Chauhan', 'F', 'navya.chauhan@email.com', '8765432112', '2000-10-14', 'Amritsar, Punjab'),
('Ayaan', 'Menon', 'M', 'ayaan.menon@email.com', '7654321101', '2001-05-27', 'Allahabad, Uttar Pradesh'),
('Ira', 'Iyer', 'F', 'ira.iyer@email.com', '6543210990', '1999-01-09', 'Ranchi, Jharkhand'),
('Shaurya', 'Hegde', 'M', 'shaurya.hegde@email.com', '5432109879', '2002-08-21', 'Howrah, West Bengal'),
('Pari', 'Agarwal', 'F', 'pari.agarwal@email.com', '4321098768', '2000-03-04', 'Jabalpur, Madhya Pradesh'),
('Krish', 'Venkatesh', 'M', 'krish.venkatesh@email.com', '3210987657', '2001-10-17', 'Bhiwandi, Maharashtra'),
('Aditi', 'Mishra', 'F', 'aditi.mishra@email.com', '2109876546', '1999-07-30', 'Gwalior, Madhya Pradesh'),
('Ved', 'Bhat', 'M', 'ved.bhat@email.com', '1098765435', '2002-05-12', 'Bareilly, Uttar Pradesh'),
('Siya', 'Yadav', 'F', 'siya.yadav@email.com', '9876543214', '2000-12-25', 'Aligarh, Uttar Pradesh'),
('Aayan', 'Lobo', 'M', 'aayan.lobo@email.com', '8765432113', '2001-07-08', 'Mysore, Karnataka'),
('Ahana', 'D\'Souza', 'F', 'ahana.dsouza@email.com', '7654321102', '1999-04-20', 'Jodhpur, Rajasthan'),
('Rudra', 'Bhatt', 'M', 'rudra.bhatt@email.com', '6543210991', '2002-01-02', 'Warangal, Telangana'),
('Anvi', 'Pawar', 'F', 'anvi.pawar@email.com', '5432109880', '2000-08-15', 'Sringar, Jammu and Kashmir'),
('Aarush', 'Thakur', 'M', 'aarush.thakur@email.com', '4321098769', '2001-03-28', 'Bhilai, Chhattisgarh'),
('Mira', 'Nayak', 'F', 'mira.nayak@email.com', '3210987658', '1999-11-10', 'Cuttack, Odisha'),
('Yuvan', 'Chawla', 'M', 'yuvan.chawla@email.com', '2109876547', '2002-06-23', 'Kurnool, Andhra Pradesh'),
('Aaliyah', 'Walia', 'F', 'aaliyah.walia@email.com', '1098765436', '2000-01-05', 'Udaipur, Rajasthan'),
('Rishaan', 'Mani', 'M', 'rishaan.mani@email.com', '9876543215', '2001-09-18', 'Dehradun, Uttarakhand'),
('Shanaya', 'Nambiar', 'F', 'shanaya.nambiar@email.com', '8765432114', '1999-05-31', 'Mathura, Uttar Pradesh'),
('Aadhav', 'Garg', 'M', 'aadhav.garg@email.com', '7654321103', '2002-02-13', 'Asansol, West Bengal'),
('Tara', 'Bajaj', 'F', 'tara.bajaj@email.com', '6543210992', '2000-10-26', 'Nanded, Maharashtra'),
('Virat', 'Goel', 'M', 'virat.goel@email.com', '5432109881', '2001-06-08', 'Gorakhpur, Uttar Pradesh'),
('Amyra', 'Basu', 'F', 'amyra.basu@email.com', '4321098770', '1999-03-21', 'Bhavnagar, Gujarat'),
('Abeer', 'Dalal', 'M', 'abeer.dalal@email.com', '3210987659', '2002-11-03', 'Guntur, Andhra Pradesh'),
('Nitya', 'Kashyap', 'F', 'nitya.kashyap@email.com', '2109876548', '2000-07-16', 'Durgapur, West Bengal'),
('Shiv', 'Goswami', 'M', 'shiv.goswami@email.com', '1098765437', '2001-04-29', 'Shillong, Meghalaya'),
('Kiaan', 'Khurana', 'M', 'kiaan.khurana@email.com', '9876543216', '1999-12-11', 'Ajmer, Rajasthan'),
('Aarohi', 'Narang', 'F', 'aarohi.narang@email.com', '8765432115', '2002-09-24', 'Akola, Maharashtra'),
('Armaan', 'Datta', 'M', 'armaan.datta@email.com', '7654321104', '2000-04-06', 'Kollam, Kerala'),
('Aarna', 'Lal', 'F', 'aarna.lal@email.com', '6543210993', '2001-11-19', 'Jhansi, Uttar Pradesh'),
('Laksh', 'Swamy', 'M', 'laksh.swamy@email.com', '5432109882', '1999-08-02', 'Ujjain, Madhya Pradesh'),
('Eva', 'Rangan', 'F', 'eva.rangan@email.com', '4321098771', '2002-05-15', 'Jamnagar, Gujarat'),
('Neil', 'Sawant', 'M', 'neil.sawant@email.com', '3210987660', '2000-01-28', 'Siliguri, West Bengal'),
('Vanya', 'Chhabra', 'F', 'vanya.chhabra@email.com', '2109876549', '2001-10-10', 'Raurkela, Odisha'),
('Advika', 'Cherian', 'F', 'advika.cherian@email.com', '1234567890', '2000-03-12', 'Thrissur, Kerala'),
('Reyansh', 'Prakash', 'M', 'reyansh.prakash@email.com', '2345678901', '2001-11-25', 'Tirupati, Andhra Pradesh'),
('Zoya', 'Bedi', 'F', 'zoya.bedi@email.com', '3456789012', '1999-07-08', 'Shimla, Himachal Pradesh'),
('Kabir', 'Ahuja', 'M', 'kabir.ahuja@email.com', '4567890123', '2002-04-20', 'Panaji, Goa'),
('Anaya', 'Malik', 'F', 'anaya.malik@email.com', '5678901234', '2000-12-03', 'Imphal, Manipur'),
('Vihaan', 'Bhandari', 'M', 'vihaan.bhandari@email.com', '6789012345', '2001-08-16', 'Gangtok, Sikkim'),
('Anika', 'Gill', 'F', 'anika.gill@email.com', '7890123456', '1999-05-29', 'Itanagar, Arunachal Pradesh'),
('Aryan', 'Chowdhury', 'M', 'aryan.chowdhury@email.com', '8901234567', '2002-01-11', 'Agartala, Tripura'),
('Myra', 'Tandon', 'F', 'myra.tandon@email.com', '9012345678', '2000-09-24', 'Kohima, Nagaland'),
('Aarav', 'Khatri', 'M', 'aarav.khatri@email.com', '0123456789', '2001-06-07', 'Aizawl, Mizoram'),
('Pari', 'Malhotra', 'F', 'pari.malhotra@email.com', '1234567891', '1999-02-19', 'Port Blair, Andaman and Nicobar Islands'),
('Vivaan', 'Shetty', 'M', 'vivaan.shetty@email.com', '2345678902', '2002-10-02', 'Kavaratti, Lakshadweep'),
('Anvi', 'Bhalla', 'F', 'anvi.bhalla@email.com', '3456789013', '2000-07-15', 'Pondicherry, Puducherry'),
('Aadi', 'Sethi', 'M', 'aadi.sethi@email.com', '4567890124', '2001-04-28', 'Daman, Daman and Diu'),
('Saanvi', 'Kapadia', 'F', 'saanvi.kapadia@email.com', '5678901235', '1999-12-11', 'Silvassa, Dadra and Nagar Haveli'),
('Arhaan', 'Bhatt', 'M', 'arhaan.bhatt@email.com', '6789012346', '2002-08-24', 'Raipur, Chhattisgarh'),
('Ishani', 'Buch', 'F', 'ishani.buch@email.com', '7890123457', '2000-05-07', 'Panipat, Haryana'),
('Kiaan', 'Dewan', 'M', 'kiaan.dewan@email.com', '8901234568', '2001-01-20', 'Bhagalpur, Bihar'),
('Aadhya', 'Mistry', 'F', 'aadhya.mistry@email.com', '9012345679', '1999-09-03', 'Jammu, Jammu and Kashmir'),
('Shaurya', 'Babu', 'M', 'shaurya.babu@email.com', '0123456780', '2002-06-16', 'Dhanbad, Jharkhand'),
('Nitara', 'Sood', 'F', 'nitara.sood@email.com', '1234567892', '2000-02-29', 'Mangalore, Karnataka'),
('Aayansh', 'Chaudhry', 'M', 'aayansh.chaudhry@email.com', '2345678903', '2001-11-12', 'Kollam, Kerala'),
('Avani', 'Deshpande', 'F', 'avani.deshpande@email.com', '3456789014', '1999-07-25', 'Gwalior, Madhya Pradesh'),
('Rudra', 'Srivastava', 'M', 'rudra.srivastava@email.com', '4567890125', '2002-04-07', 'Kolhapur, Maharashtra'),
('Misha', 'Jhaveri', 'F', 'misha.jhaveri@email.com', '5678901236', '2000-12-20', 'Puri, Odisha'),
('Ayaan', 'Ghosh', 'M', 'ayaan.ghosh@email.com', '6789012347', '2001-09-02', 'Amritsar, Punjab'),
('Navya', 'Mathur', 'F', 'navya.mathur@email.com', '7890123458', '1999-05-15', 'Ajmer, Rajasthan'),
('Veer', 'Saini', 'M', 'veer.saini@email.com', '8901234569', '2002-01-28', 'Madurai, Tamil Nadu'),
('Aanya', 'Basu', 'F', 'aanya.basu@email.com', '9012345670', '2000-10-11', 'Warangal, Telangana'),
('Reyansh', 'Goyal', 'M', 'reyansh.goyal@email.com', '0123456781', '2001-06-24', 'Agra, Uttar Pradesh'),
('Kyra', 'Venkatesh', 'F', 'kyra.venkatesh@email.com', '1234567893', '1999-03-07', 'Dehradun, Uttarakhand'),
('Aarush', 'Chatterjee', 'M', 'aarush.chatterjee@email.com', '2345678904', '2002-11-20', 'Asansol, West Bengal'),
('Aaradhya', 'Narang', 'F', 'aaradhya.narang@email.com', '3456789015', '2000-08-03', 'Ludhiana, Punjab'),
('Kabir', 'Saxena', 'M', 'kabir.saxena@email.com', '4567890126', '2001-04-16', 'Nashik, Maharashtra'),
('Anaya', 'Mehrotra', 'F', 'anaya.mehrotra@email.com', '5678901237', '1999-12-29', 'Faridabad, Haryana'),
('Vivaan', 'Chhabra', 'M', 'vivaan.chhabra@email.com', '6789012348', '2002-09-11', 'Kochi, Kerala'),
('Riya', 'Bansal', 'F', 'riya.bansal@email.com', '7890123459', '2000-05-24', 'Guwahati, Assam'),
('Advait', 'Bhatnagar', 'M', 'advait.bhatnagar@email.com', '8901234560', '2001-02-06', 'Solapur, Maharashtra'),
('Zara', 'Raval', 'F', 'zara.raval@email.com', '9012345671', '1999-10-19', 'Mysore, Karnataka'),
('Aaryan', 'Nanda', 'M', 'aaryan.nanda@email.com', '0123456782', '2002-07-02', 'Jalandhar, Punjab'),
('Aisha', 'Kapoor', 'F', 'aisha.kapoor@email.com', '1234567894', '2000-03-15', 'Bhubaneswar, Odisha'),
('Dhruv', 'Anand', 'M', 'dhruv.anand@email.com', '2345678905', '2001-11-28', 'Kota, Rajasthan'),
('Ira', 'Mallik', 'F', 'ira.mallik@email.com', '3456789016', '1999-08-11', 'Chandigarh, Punjab'),
('Aarush', 'Suri', 'M', 'aarush.suri@email.com', '4567890127', '2002-04-24', 'Trichy, Tamil Nadu'),
('Aditi', 'Chakrabarti', 'F', 'aditi.chakrabarti@email.com', '5678901238', '2000-01-07', 'Raipur, Chhattisgarh'),
('Arnav', 'Kulkarni', 'M', 'arnav.kulkarni@email.com', '6789012349', '2001-09-20', 'Cuttack, Odisha'),
('Anvi', 'Bajaj', 'F', 'anvi.bajaj@email.com', '7890123450', '1999-06-03', 'Bikaner, Rajasthan'),
('Arjun', 'Sharma', 'M', 'arjun.sharma@gmail.com', '9876543210', '2000-03-15', '123 Street, Delhi'),
('Riya', 'Verma', 'F', 'riya.verma@yahoo.com', '9871234567', '1999-06-12', '456 Lane, Mumbai'),
('Amit', 'Singh', 'M', 'amit.singh@hotmail.com', '9887563421', '2001-01-25', '789 Road, Jaipur'),
('Priya', 'Patel', 'F', 'priya.patel@outlook.com', '9123456789', '2000-08-22', '1011 Block, Ahmedabad'),
('Rohan', 'Kumar', 'M', 'rohan.kumar@gmail.com', '9823456780', '2001-12-05', '12 Garden Street, Bangalore'),
('Sneha', 'Nair', 'F', 'sneha.nair@yahoo.com', '9900123456', '1999-09-18', '23 Ocean Drive, Kochi'),
('Ankit', 'Mehta', 'M', 'ankit.mehta@gmail.com', '9891234567', '2000-11-02', '45 Horizon Road, Chandigarh'),
('Pooja', 'Rao', 'F', 'pooja.rao@hotmail.com', '9876541234', '2001-07-27', '67 Sunshine Street, Hyderabad'),
('Kunal', 'Joshi', 'M', 'kunal.joshi@yahoo.com', '9867543210', '2000-04-14', '89 Central Avenue, Pune'),
('Anjali', 'Garg', 'F', 'anjali.garg@gmail.com', '9901234567', '1999-10-09', '111 West End, Delhi');


INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
-- Course CS101
('23CS1001', 1, 'CS101', '2024-08-01'),
('23CS1002', 2, 'CS101', '2024-08-01'),
('23CS1003', 3, 'CS101', '2024-08-01'),
('23CS1004', 4, 'CS101', '2024-08-01'),
('23CS1005', 5, 'CS101', '2024-08-01'),
('23CS1006', 6, 'CS101', '2024-08-01'),
('23CS1007', 7, 'CS101', '2024-08-01'),
('23CS1008', 8, 'CS101', '2024-08-01'),
('23CS1009', 9, 'CS101', '2024-08-01'),
('23CS1010', 10, 'CS101', '2024-08-01'),
('23CS1011', 11, 'CS101', '2024-08-01'),
('23CS1012', 12, 'CS101', '2024-08-01'),
('23CS1013', 13, 'CS101', '2024-08-01'),
('23CS1014', 14, 'CS101', '2024-08-01'),
('23CS1015', 15, 'CS101', '2024-08-01'),
('23CS1016', 16, 'CS101', '2024-08-01'),
('23CS1017', 17, 'CS101', '2024-08-01'),
('23CS1018', 18, 'CS101', '2024-08-01'),
('23CS1019', 19, 'CS101', '2024-08-01'),
('23CS1020', 20, 'CS101', '2024-08-01'),
('23CS1021', 21, 'CS101', '2024-08-01'),
('23CS1022', 22, 'CS101', '2024-08-01'),
('23CS1023', 23, 'CS101', '2024-08-01'),
('23CS1024', 24, 'CS101', '2024-08-01'),

-- Course BA101
('23BA1001', 25, 'BA101', '2024-08-01'),
('23BA1002', 26, 'BA101', '2024-08-01'),
('23BA1003', 27, 'BA101', '2024-08-01'),
('23BA1004', 28, 'BA101', '2024-08-01'),
('23BA1005', 29, 'BA101', '2024-08-01'),
('23BA1006', 30, 'BA101', '2024-08-01'),
('23BA1007', 31, 'BA101', '2024-08-01'),
('23BA1008', 32, 'BA101', '2024-08-01'),
('23BA1009', 33, 'BA101', '2024-08-01'),
('23BA1010', 34, 'BA101', '2024-08-01'),
('23BA1011', 35, 'BA101', '2024-08-01'),
('23BA1012', 36, 'BA101', '2024-08-01'),
('23BA1013', 37, 'BA101', '2024-08-01'),
('23BA1014', 38, 'BA101', '2024-08-01'),
('23BA1015', 39, 'BA101', '2024-08-01'),
('23BA1016', 40, 'BA101', '2024-08-01'),
('23BA1017', 41, 'BA101', '2024-08-01'),
('23BA1018', 42, 'BA101', '2024-08-01'),
('23BA1019', 43, 'BA101', '2024-08-01'),
('23BA1020', 44, 'BA101', '2024-08-01'),
('23BA1021', 45, 'BA101', '2024-08-01'),
('23BA1022', 46, 'BA101', '2024-08-01'),
('23BA1023', 47, 'BA101', '2024-08-01'),
('23BA1024', 48, 'BA101', '2024-08-01'),

-- Course PSY101
('23PSY1001', 49, 'PSY101', '2024-08-01'),
('23PSY1002', 50, 'PSY101', '2024-08-01'),
('23PSY1003', 51, 'PSY101', '2024-08-01'),
('23PSY1004', 52, 'PSY101', '2024-08-01'),
('23PSY1005', 53, 'PSY101', '2024-08-01'),
('23PSY1006', 54, 'PSY101', '2024-08-01'),
('23PSY1007', 55, 'PSY101', '2024-08-01'),
('23PSY1008', 56, 'PSY101', '2024-08-01'),
('23PSY1009', 57, 'PSY101', '2024-08-01'),
('23PSY1010', 58, 'PSY101', '2024-08-01'),
('23PSY1011', 59, 'PSY101', '2024-08-01'),
('23PSY1012', 60, 'PSY101', '2024-08-01'),
('23PSY1013', 61, 'PSY101', '2024-08-01'),
('23PSY1014', 62, 'PSY101', '2024-08-01'),
('23PSY1015', 63, 'PSY101', '2024-08-01'),
('23PSY1016', 64, 'PSY101', '2024-08-01'),
('23PSY1017', 65, 'PSY101', '2024-08-01'),
('23PSY1018', 66, 'PSY101', '2024-08-01'),
('23PSY1019', 67, 'PSY101', '2024-08-01'),
('23PSY1020', 68, 'PSY101', '2024-08-01'),
('23PSY1021', 69, 'PSY101', '2024-08-01'),
('23PSY1022', 70, 'PSY101', '2024-08-01'),
('23PSY1023', 71, 'PSY101', '2024-08-01'),
('23PSY1024', 72, 'PSY101', '2024-08-01'),

-- Course MAT101
('23MAT1001', 73, 'MAT101', '2024-08-01'),
('23MAT1002', 74, 'MAT101', '2024-08-01'),
('23MAT1003', 75, 'MAT101', '2024-08-01'),
('23MAT1004', 76, 'MAT101', '2024-08-01'),
('23MAT1005', 77, 'MAT101', '2024-08-01'),
('23MAT1006', 78, 'MAT101', '2024-08-01'),
('23MAT1007', 79, 'MAT101', '2024-08-01'),
('23MAT1008', 80, 'MAT101', '2024-08-01'),
('23MAT1009', 81, 'MAT101', '2024-08-01'),
('23MAT1010', 82, 'MAT101', '2024-08-01'),
('23MAT1011', 83, 'MAT101', '2024-08-01'),
('23MAT1012', 84, 'MAT101', '2024-08-01'),
('23MAT1013', 85, 'MAT101', '2024-08-01'),
('23MAT1014', 86, 'MAT101', '2024-08-01'),
('23MAT1015', 87, 'MAT101', '2024-08-01'),
('23MAT1016', 88, 'MAT101', '2024-08-01'),
('23MAT1017', 89, 'MAT101', '2024-08-01'),
('23MAT1018', 90, 'MAT101', '2024-08-01'),
('23MAT1019', 91, 'MAT101', '2024-08-01'),
('23MAT1020', 92, 'MAT101', '2024-08-01'),
('23MAT1021', 93, 'MAT101', '2024-08-01'),
('23MAT1022', 94, 'MAT101', '2024-08-01'),
('23MAT1023', 95, 'MAT101', '2024-08-01'),
('23MAT1024', 96, 'MAT101', '2024-08-01'),

-- Course HIS101
('23HIS1001', 97, 'HIS101', '2024-08-01'),
('23HIS1002', 98, 'HIS101', '2024-08-01'),
('23HIS1003', 99, 'HIS101', '2024-08-01'),
('23HIS1004', 100, 'HIS101', '2024-08-01'),
('23HIS1005', 101, 'HIS101', '2024-08-01'),
('23HIS1006', 102, 'HIS101', '2024-08-01'),
('23HIS1007', 103, 'HIS101', '2024-08-01'),
('23HIS1008', 104, 'HIS101', '2024-08-01'),
('23HIS1009', 105, 'HIS101', '2024-08-01'),
('23HIS1010', 106, 'HIS101', '2024-08-01'),
('23HIS1011', 107, 'HIS101', '2024-08-01'),
('23HIS1012', 108, 'HIS101', '2024-08-01'),
('23HIS1013', 109, 'HIS101', '2024-08-01'),
('23HIS1014', 110, 'HIS101', '2024-08-01'),
('23HIS1015', 111, 'HIS101', '2024-08-01'),
('23HIS1016', 112, 'HIS101', '2024-08-01'),
('23HIS1017', 113, 'HIS101', '2024-08-01'),
('23HIS1018', 114, 'HIS101', '2024-08-01'),
('23HIS1019', 115, 'HIS101', '2024-08-01'),
('23HIS1020', 116, 'HIS101', '2024-08-01'),
('23HIS1021', 117, 'HIS101', '2024-08-01'),
('23HIS1022', 118, 'HIS101', '2024-08-01'),
('23HIS1023', 119, 'HIS101', '2024-08-01'),
('23HIS1024', 120, 'HIS101', '2024-08-01');

use college;

INSERT INTO Teachers (teacher_id, first_name, last_name, email, phone, department_id)
VALUES
('T001', 'Aarav', 'Sharma', 'aarav.sharma@example.com', '9876543210', 'CS'),
('T002', 'Vivaan', 'Gupta', 'vivaan.gupta@example.com', '9876543211', 'BA'),
('T003', 'Aditya', 'Patel', 'aditya.patel@example.com', '9876543212', 'PS'),
('T004', 'Vihaan', 'Mehta', 'vihaan.mehta@example.com', '9876543213', 'MA'),
('T005', 'Arjun', 'Singh', 'arjun.singh@example.com', '9876543214', 'HI'),
('T006', 'Sai', 'Reddy', 'sai.reddy@example.com', '9876543215', 'CS'),
('T007', 'Anaya', 'Kumar', 'anaya.kumar@example.com', '9876543216', 'BA'),
('T008', 'Aisha', 'Verma', 'aisha.verma@example.com', '9876543217', 'PS'),
('T009', 'Kabir', 'Nair', 'kabir.nair@example.com', '9876543218', 'MA'),
('T010', 'Saanvi', 'Bhatia', 'saanvi.bhatia@example.com', '9876543219', 'HI'),
('T011', 'Riya', 'Jain', 'riya.jain@example.com', '9876543220', 'CS'),
('T012', 'Karan', 'Choudhary', 'karan.choudhary@example.com', '9876543221', 'BA'),
('T013', 'Isha', 'Sethi', 'isha.sethi@example.com', '9876543222', 'PS'),
('T014', 'Arnav', 'Desai', 'arnav.desai@example.com', '9876543223', 'MA'),
('T015', 'Diya', 'Kapoor', 'diya.kapoor@example.com', '9876543224', 'HI'),
('T016', 'Rohan', 'Yadav', 'rohan.yadav@example.com', '9876543225', 'CS'),
('T017', 'Neha', 'Agarwal', 'neha.agarwal@example.com', '9876543226', 'BA'),
('T018', 'Pranav', 'Malhotra', 'pranav.malhotra@example.com', '9876543227', 'PS'),
('T019', 'Tanvi', 'Pillai', 'tanvi.pillai@example.com', '9876543228', 'MA'),
('T020', 'Nikhil', 'Sood', 'nikhil.sood@example.com', '9876543229', 'HI'),
('T021', 'Simran', 'Rao', 'simran.rao@example.com', '9876543230', 'CS'),
('T022', 'Aman', 'Kohli', 'aman.kohli@example.com', '9876543231', 'BA'),
('T023', 'Sneha', 'Dutta', 'sneha.dutta@example.com', '9876543232', 'PS'),
('T024', 'Raj', 'Chopra', 'raj.chopra@example.com', '9876543233', 'MA'),
('T025', 'Meera', 'Bhattacharya', 'meera.bhattacharya@example.com', '9876543234', 'HI');


use college;

-- Inserting data into CourseTimetable for CS101 (Introduction to Programming) subject
INSERT INTO CourseTimetable (course_id, teacher_id, subject_id, day_of_week, period, start_time, end_time, location)
VALUES
-- Monday schedule
('CS101', 'T001', 'CS201', 'Monday', 1, '09:00:00', '09:50:00', 'Room 101'),
('CS101', 'T001', 'CS201', 'Monday', 2, '10:00:00', '10:50:00', 'Room 101'),
('CS101', 'T001', 'CS202', 'Monday', 3, '11:00:00', '11:50:00', 'Room 102'),
('CS101', 'T001', 'CS203', 'Monday', 4, '12:00:00', '12:50:00', 'Room 103'),
('CS101', 'T001', 'CS204', 'Monday', 5, '14:00:00', '14:50:00', 'Room 104'),
('CS101', 'T001', 'CS205', 'Monday', 6, '15:00:00', '15:50:00', 'Room 105'),
('CS101', 'T001', 'CS206', 'Monday', 7, '16:00:00', '16:50:00', 'Room 106'),

-- Tuesday schedule
('CS101', 'T001', 'CS201', 'Tuesday', 1, '09:00:00', '09:50:00', 'Room 101'),
('CS101', 'T001', 'CS202', 'Tuesday', 2, '10:00:00', '10:50:00', 'Room 102'),
('CS101', 'T001', 'CS203', 'Tuesday', 3, '11:00:00', '11:50:00', 'Room 103'),
('CS101', 'T001', 'CS204', 'Tuesday', 4, '12:00:00', '12:50:00', 'Room 104'),
('CS101', 'T001', 'CS205', 'Tuesday', 5, '14:00:00', '14:50:00', 'Room 105'),
('CS101', 'T001', 'CS206', 'Tuesday', 6, '15:00:00', '15:50:00', 'Room 106'),
('CS101', 'T001', 'CS201', 'Tuesday', 7, '16:00:00', '16:50:00', 'Room 101'),

-- Wednesday schedule
('CS101', 'T001', 'CS201', 'Wednesday', 1, '09:00:00', '09:50:00', 'Room 101'),
('CS101', 'T001', 'CS202', 'Wednesday', 2, '10:00:00', '10:50:00', 'Room 102'),
('CS101', 'T001', 'CS203', 'Wednesday', 3, '11:00:00', '11:50:00', 'Room 103'),
('CS101', 'T001', 'CS204', 'Wednesday', 4, '12:00:00', '12:50:00', 'Room 104'),
('CS101', 'T001', 'CS205', 'Wednesday', 5, '14:00:00', '14:50:00', 'Room 105'),
('CS101', 'T001', 'CS206', 'Wednesday', 6, '15:00:00', '15:50:00', 'Room 106'),
('CS101', 'T001', 'CS201', 'Wednesday', 7, '16:00:00', '16:50:00', 'Room 101'),

-- Thursday schedule
('CS101', 'T001', 'CS201', 'Thursday', 1, '09:00:00', '09:50:00', 'Room 101'),
('CS101', 'T001', 'CS202', 'Thursday', 2, '10:00:00', '10:50:00', 'Room 102'),
('CS101', 'T001', 'CS203', 'Thursday', 3, '11:00:00', '11:50:00', 'Room 103'),
('CS101', 'T001', 'CS204', 'Thursday', 4, '12:00:00', '12:50:00', 'Room 104'),
('CS101', 'T001', 'CS205', 'Thursday', 5, '14:00:00', '14:50:00', 'Room 105'),
('CS101', 'T001', 'CS206', 'Thursday', 6, '15:00:00', '15:50:00', 'Room 106'),
('CS101', 'T001', 'CS201', 'Thursday', 7, '16:00:00', '16:50:00', 'Room 101'),

-- Friday schedule
('CS101', 'T001', 'CS201', 'Friday', 1, '09:00:00', '09:50:00', 'Room 101'),
('CS101', 'T001', 'CS202', 'Friday', 2, '10:00:00', '10:50:00', 'Room 102'),
('CS101', 'T001', 'CS203', 'Friday', 3, '11:00:00', '11:50:00', 'Room 103'),
('CS101', 'T001', 'CS204', 'Friday', 4, '12:00:00', '12:50:00', 'Room 104'),
('CS101', 'T001', 'CS205', 'Friday', 5, '14:00:00', '14:50:00', 'Room 105'),
('CS101', 'T001', 'CS206', 'Friday', 6, '15:00:00', '15:50:00', 'Room 106'),
('CS101', 'T001', 'CS201', 'Friday', 7, '16:00:00', '16:50:00', 'Room 101');

-- Inserting data into CourseTimetable for BA101 (Bachelor of Business Administration) subjects
INSERT INTO CourseTimetable (course_id, teacher_id, subject_id, day_of_week, period, start_time, end_time, location)
VALUES
-- Monday schedule
('BA101', 'T002', 'BA201', 'Monday', 1, '09:00:00', '09:50:00', 'Room 201'),
('BA101', 'T002', 'BA202', 'Monday', 2, '10:00:00', '10:50:00', 'Room 202'),
('BA101', 'T002', 'BA203', 'Monday', 3, '11:00:00', '11:50:00', 'Room 203'),
('BA101', 'T002', 'BA204', 'Monday', 4, '12:00:00', '12:50:00', 'Room 204'),
('BA101', 'T002', 'BA205', 'Monday', 5, '14:00:00', '14:50:00', 'Room 205'),
('BA101', 'T002', 'BA206', 'Monday', 6, '15:00:00', '15:50:00', 'Room 206'),
('BA101', 'T002', 'BA201', 'Monday', 7, '16:00:00', '16:50:00', 'Room 201'),

-- Tuesday schedule
('BA101', 'T002', 'BA201', 'Tuesday', 1, '09:00:00', '09:50:00', 'Room 201'),
('BA101', 'T002', 'BA202', 'Tuesday', 2, '10:00:00', '10:50:00', 'Room 202'),
('BA101', 'T002', 'BA203', 'Tuesday', 3, '11:00:00', '11:50:00', 'Room 203'),
('BA101', 'T002', 'BA204', 'Tuesday', 4, '12:00:00', '12:50:00', 'Room 204'),
('BA101', 'T002', 'BA205', 'Tuesday', 5, '14:00:00', '14:50:00', 'Room 205'),
('BA101', 'T002', 'BA206', 'Tuesday', 6, '15:00:00', '15:50:00', 'Room 206'),
('BA101', 'T002', 'BA201', 'Tuesday', 7, '16:00:00', '16:50:00', 'Room 201'),

-- Wednesday schedule
('BA101', 'T002', 'BA201', 'Wednesday', 1, '09:00:00', '09:50:00', 'Room 201'),
('BA101', 'T002', 'BA202', 'Wednesday', 2, '10:00:00', '10:50:00', 'Room 202'),
('BA101', 'T002', 'BA203', 'Wednesday', 3, '11:00:00', '11:50:00', 'Room 203'),
('BA101', 'T002', 'BA204', 'Wednesday', 4, '12:00:00', '12:50:00', 'Room 204'),
('BA101', 'T002', 'BA205', 'Wednesday', 5, '14:00:00', '14:50:00', 'Room 205'),
('BA101', 'T002', 'BA206', 'Wednesday', 6, '15:00:00', '15:50:00', 'Room 206'),
('BA101', 'T002', 'BA201', 'Wednesday', 7, '16:00:00', '16:50:00', 'Room 201'),

-- Thursday schedule
('BA101', 'T002', 'BA201', 'Thursday', 1, '09:00:00', '09:50:00', 'Room 201'),
('BA101', 'T002', 'BA202', 'Thursday', 2, '10:00:00', '10:50:00', 'Room 202'),
('BA101', 'T002', 'BA203', 'Thursday', 3, '11:00:00', '11:50:00', 'Room 203'),
('BA101', 'T002', 'BA204', 'Thursday', 4, '12:00:00', '12:50:00', 'Room 204'),
('BA101', 'T002', 'BA205', 'Thursday', 5, '14:00:00', '14:50:00', 'Room 205'),
('BA101', 'T002', 'BA206', 'Thursday', 6, '15:00:00', '15:50:00', 'Room 206'),
('BA101', 'T002', 'BA201', 'Thursday', 7, '16:00:00', '16:50:00', 'Room 201'),

-- Friday schedule
('BA101', 'T002', 'BA201', 'Friday', 1, '09:00:00', '09:50:00', 'Room 201'),
('BA101', 'T002', 'BA202', 'Friday', 2, '10:00:00', '10:50:00', 'Room 202'),
('BA101', 'T002', 'BA203', 'Friday', 3, '11:00:00', '11:50:00', 'Room 203'),
('BA101', 'T002', 'BA204', 'Friday', 4, '12:00:00', '12:50:00', 'Room 204'),
('BA101', 'T002', 'BA205', 'Friday', 5, '14:00:00', '14:50:00', 'Room 205'),
('BA101', 'T002', 'BA206', 'Friday', 6, '15:00:00', '15:50:00', 'Room 206'),
('BA101', 'T002', 'BA201', 'Friday', 7, '16:00:00', '16:50:00', 'Room 201');

-- Inserting data into CourseTimetable for PSY101 (Bachelor of Psychology) subjects
INSERT INTO CourseTimetable (course_id, teacher_id, subject_id, day_of_week, period, start_time, end_time, location)
VALUES
-- Monday schedule
('PSY101', 'T003', 'PSY201', 'Monday', 1, '09:00:00', '09:50:00', 'Room 301'),
('PSY101', 'T003', 'PSY202', 'Monday', 2, '10:00:00', '10:50:00', 'Room 302'),
('PSY101', 'T003', 'PSY203', 'Monday', 3, '11:00:00', '11:50:00', 'Room 303'),
('PSY101', 'T003', 'PSY204', 'Monday', 4, '12:00:00', '12:50:00', 'Room 304'),
('PSY101', 'T003', 'PSY205', 'Monday', 5, '14:00:00', '14:50:00', 'Room 305'),
('PSY101', 'T003', 'PSY206', 'Monday', 6, '15:00:00', '15:50:00', 'Room 306'),
('PSY101', 'T003', 'PSY201', 'Monday', 7, '16:00:00', '16:50:00', 'Room 301'),

-- Tuesday schedule
('PSY101', 'T003', 'PSY201', 'Tuesday', 1, '09:00:00', '09:50:00', 'Room 301'),
('PSY101', 'T003', 'PSY202', 'Tuesday', 2, '10:00:00', '10:50:00', 'Room 302'),
('PSY101', 'T003', 'PSY203', 'Tuesday', 3, '11:00:00', '11:50:00', 'Room 303'),
('PSY101', 'T003', 'PSY204', 'Tuesday', 4, '12:00:00', '12:50:00', 'Room 304'),
('PSY101', 'T003', 'PSY205', 'Tuesday', 5, '14:00:00', '14:50:00', 'Room 305'),
('PSY101', 'T003', 'PSY206', 'Tuesday', 6, '15:00:00', '15:50:00', 'Room 306'),
('PSY101', 'T003', 'PSY201', 'Tuesday', 7, '16:00:00', '16:50:00', 'Room 301'),

-- Wednesday schedule
('PSY101', 'T003', 'PSY201', 'Wednesday', 1, '09:00:00', '09:50:00', 'Room 301'),
('PSY101', 'T003', 'PSY202', 'Wednesday', 2, '10:00:00', '10:50:00', 'Room 302'),
('PSY101', 'T003', 'PSY203', 'Wednesday', 3, '11:00:00', '11:50:00', 'Room 303'),
('PSY101', 'T003', 'PSY204', 'Wednesday', 4, '12:00:00', '12:50:00', 'Room 304'),
('PSY101', 'T003', 'PSY205', 'Wednesday', 5, '14:00:00', '14:50:00', 'Room 305'),
('PSY101', 'T003', 'PSY206', 'Wednesday', 6, '15:00:00', '15:50:00', 'Room 306'),
('PSY101', 'T003', 'PSY201', 'Wednesday', 7, '16:00:00', '16:50:00', 'Room 301'),

-- Thursday schedule
('PSY101', 'T003', 'PSY201', 'Thursday', 1, '09:00:00', '09:50:00', 'Room 301'),
('PSY101', 'T003', 'PSY202', 'Thursday', 2, '10:00:00', '10:50:00', 'Room 302'),
('PSY101', 'T003', 'PSY203', 'Thursday', 3, '11:00:00', '11:50:00', 'Room 303'),
('PSY101', 'T003', 'PSY204', 'Thursday', 4, '12:00:00', '12:50:00', 'Room 304'),
('PSY101', 'T003', 'PSY205', 'Thursday', 5, '14:00:00', '14:50:00', 'Room 305'),
('PSY101', 'T003', 'PSY206', 'Thursday', 6, '15:00:00', '15:50:00', 'Room 306'),
('PSY101', 'T003', 'PSY201', 'Thursday', 7, '16:00:00', '16:50:00', 'Room 301'),

-- Friday schedule
('PSY101', 'T003', 'PSY201', 'Friday', 1, '09:00:00', '09:50:00', 'Room 301'),
('PSY101', 'T003', 'PSY202', 'Friday', 2, '10:00:00', '10:50:00', 'Room 302'),
('PSY101', 'T003', 'PSY203', 'Friday', 3, '11:00:00', '11:50:00', 'Room 303'),
('PSY101', 'T003', 'PSY204', 'Friday', 4, '12:00:00', '12:50:00', 'Room 304'),
('PSY101', 'T003', 'PSY205', 'Friday', 5, '14:00:00', '14:50:00', 'Room 305'),
('PSY101', 'T003', 'PSY206', 'Friday', 6, '15:00:00', '15:50:00', 'Room 306'),
('PSY101', 'T003', 'PSY201', 'Friday', 7, '16:00:00', '16:50:00', 'Room 301');

-- Inserting data into CourseTimetable for MAT101 (Bachelor of Mathematics) subjects
INSERT INTO CourseTimetable (course_id, teacher_id, subject_id, day_of_week, period, start_time, end_time, location)
VALUES
-- Monday schedule
('MAT101', 'T004', 'MAT201', 'Monday', 1, '09:00:00', '09:50:00', 'Room 401'),
('MAT101', 'T004', 'MAT202', 'Monday', 2, '10:00:00', '10:50:00', 'Room 402'),
('MAT101', 'T004', 'MAT203', 'Monday', 3, '11:00:00', '11:50:00', 'Room 403'),
('MAT101', 'T004', 'MAT204', 'Monday', 4, '12:00:00', '12:50:00', 'Room 404'),
('MAT101', 'T004', 'MAT205', 'Monday', 5, '14:00:00', '14:50:00', 'Room 405'),
('MAT101', 'T004', 'MAT206', 'Monday', 6, '15:00:00', '15:50:00', 'Room 406'),
('MAT101', 'T004', 'MAT201', 'Monday', 7, '16:00:00', '16:50:00', 'Room 401'),

-- Tuesday schedule
('MAT101', 'T004', 'MAT201', 'Tuesday', 1, '09:00:00', '09:50:00', 'Room 401'),
('MAT101', 'T004', 'MAT202', 'Tuesday', 2, '10:00:00', '10:50:00', 'Room 402'),
('MAT101', 'T004', 'MAT203', 'Tuesday', 3, '11:00:00', '11:50:00', 'Room 403'),
('MAT101', 'T004', 'MAT204', 'Tuesday', 4, '12:00:00', '12:50:00', 'Room 404'),
('MAT101', 'T004', 'MAT205', 'Tuesday', 5, '14:00:00', '14:50:00', 'Room 405'),
('MAT101', 'T004', 'MAT206', 'Tuesday', 6, '15:00:00', '15:50:00', 'Room 406'),
('MAT101', 'T004', 'MAT201', 'Tuesday', 7, '16:00:00', '16:50:00', 'Room 401'),

-- Wednesday schedule
('MAT101', 'T004', 'MAT201', 'Wednesday', 1, '09:00:00', '09:50:00', 'Room 401'),
('MAT101', 'T004', 'MAT202', 'Wednesday', 2, '10:00:00', '10:50:00', 'Room 402'),
('MAT101', 'T004', 'MAT203', 'Wednesday', 3, '11:00:00', '11:50:00', 'Room 403'),
('MAT101', 'T004', 'MAT204', 'Wednesday', 4, '12:00:00', '12:50:00', 'Room 404'),
('MAT101', 'T004', 'MAT205', 'Wednesday', 5, '14:00:00', '14:50:00', 'Room 405'),
('MAT101', 'T004', 'MAT206', 'Wednesday', 6, '15:00:00', '15:50:00', 'Room 406'),
('MAT101', 'T004', 'MAT201', 'Wednesday', 7, '16:00:00', '16:50:00', 'Room 401'),

-- Thursday schedule
('MAT101', 'T004', 'MAT201', 'Thursday', 1, '09:00:00', '09:50:00', 'Room 401'),
('MAT101', 'T004', 'MAT202', 'Thursday', 2, '10:00:00', '10:50:00', 'Room 402'),
('MAT101', 'T004', 'MAT203', 'Thursday', 3, '11:00:00', '11:50:00', 'Room 403'),
('MAT101', 'T004', 'MAT204', 'Thursday', 4, '12:00:00', '12:50:00', 'Room 404'),
('MAT101', 'T004', 'MAT205', 'Thursday', 5, '14:00:00', '14:50:00', 'Room 405'),
('MAT101', 'T004', 'MAT206', 'Thursday', 6, '15:00:00', '15:50:00', 'Room 406'),
('MAT101', 'T004', 'MAT201', 'Thursday', 7, '16:00:00', '16:50:00', 'Room 401'),

-- Friday schedule
('MAT101', 'T004', 'MAT201', 'Friday', 1, '09:00:00', '09:50:00', 'Room 401'),
('MAT101', 'T004', 'MAT202', 'Friday', 2, '10:00:00', '10:50:00', 'Room 402'),
('MAT101', 'T004', 'MAT203', 'Friday', 3, '11:00:00', '11:50:00', 'Room 403'),
('MAT101', 'T004', 'MAT204', 'Friday', 4, '12:00:00', '12:50:00', 'Room 404'),
('MAT101', 'T004', 'MAT205', 'Friday', 5, '14:00:00', '14:50:00', 'Room 405'),
('MAT101', 'T004', 'MAT206', 'Friday', 6, '15:00:00', '15:50:00', 'Room 406'),
('MAT101', 'T004', 'MAT201', 'Friday', 7, '16:00:00', '16:50:00', 'Room 401');


-- Inserting data into CourseTimetable for HIS101 (Bachelor of History) subjects
INSERT INTO CourseTimetable (course_id, teacher_id, subject_id, day_of_week, period, start_time, end_time, location)
VALUES
-- Monday schedule
('HIS101', 'T005', 'HIS201', 'Monday', 1, '09:00:00', '09:50:00', 'Room 501'),
('HIS101', 'T005', 'HIS202', 'Monday', 2, '10:00:00', '10:50:00', 'Room 502'),
('HIS101', 'T005', 'HIS203', 'Monday', 3, '11:00:00', '11:50:00', 'Room 503'),
('HIS101', 'T005', 'HIS204', 'Monday', 4, '12:00:00', '12:50:00', 'Room 504'),
('HIS101', 'T005', 'HIS205', 'Monday', 5, '14:00:00', '14:50:00', 'Room 505'),
('HIS101', 'T005', 'HIS206', 'Monday', 6, '15:00:00', '15:50:00', 'Room 506'),
('HIS101', 'T005', 'HIS201', 'Monday', 7, '16:00:00', '16:50:00', 'Room 501'),

-- Tuesday schedule
('HIS101', 'T005', 'HIS201', 'Tuesday', 1, '09:00:00', '09:50:00', 'Room 501'),
('HIS101', 'T005', 'HIS202', 'Tuesday', 2, '10:00:00', '10:50:00', 'Room 502'),
('HIS101', 'T005', 'HIS203', 'Tuesday', 3, '11:00:00', '11:50:00', 'Room 503'),
('HIS101', 'T005', 'HIS204', 'Tuesday', 4, '12:00:00', '12:50:00', 'Room 504'),
('HIS101', 'T005', 'HIS205', 'Tuesday', 5, '14:00:00', '14:50:00', 'Room 505'),
('HIS101', 'T005', 'HIS206', 'Tuesday', 6, '15:00:00', '15:50:00', 'Room 506'),
('HIS101', 'T005', 'HIS201', 'Tuesday', 7, '16:00:00', '16:50:00', 'Room 501'),

-- Wednesday schedule
('HIS101', 'T005', 'HIS201', 'Wednesday', 1, '09:00:00', '09:50:00', 'Room 501'),
('HIS101', 'T005', 'HIS202', 'Wednesday', 2, '10:00:00', '10:50:00', 'Room 502'),
('HIS101', 'T005', 'HIS203', 'Wednesday', 3, '11:00:00', '11:50:00', 'Room 503'),
('HIS101', 'T005', 'HIS204', 'Wednesday', 4, '12:00:00', '12:50:00', 'Room 504'),
('HIS101', 'T005', 'HIS205', 'Wednesday', 5, '14:00:00', '14:50:00', 'Room 505'),
('HIS101', 'T005', 'HIS206', 'Wednesday', 6, '15:00:00', '15:50:00', 'Room 506'),
('HIS101', 'T005', 'HIS201', 'Wednesday', 7, '16:00:00', '16:50:00', 'Room 501'),

-- Thursday schedule
('HIS101', 'T005', 'HIS201', 'Thursday', 1, '09:00:00', '09:50:00', 'Room 501'),
('HIS101', 'T005', 'HIS202', 'Thursday', 2, '10:00:00', '10:50:00', 'Room 502'),
('HIS101', 'T005', 'HIS203', 'Thursday', 3, '11:00:00', '11:50:00', 'Room 503'),
('HIS101', 'T005', 'HIS204', 'Thursday', 4, '12:00:00', '12:50:00', 'Room 504'),
('HIS101', 'T005', 'HIS205', 'Thursday', 5, '14:00:00', '14:50:00', 'Room 505'),
('HIS101', 'T005', 'HIS206', 'Thursday', 6, '15:00:00', '15:50:00', 'Room 506'),
('HIS101', 'T005', 'HIS201', 'Thursday', 7, '16:00:00', '16:50:00', 'Room 501'),

-- Friday schedule
('HIS101', 'T005', 'HIS201', 'Friday', 1, '09:00:00', '09:50:00', 'Room 501'),
('HIS101', 'T005', 'HIS202', 'Friday', 2, '10:00:00', '10:50:00', 'Room 502'),
('HIS101', 'T005', 'HIS203', 'Friday', 3, '11:00:00', '11:50:00', 'Room 503'),
('HIS101', 'T005', 'HIS204', 'Friday', 4, '12:00:00', '12:50:00', 'Room 504'),
('HIS101', 'T005', 'HIS205', 'Friday', 5, '14:00:00', '14:50:00', 'Room 505'),
('HIS101', 'T005', 'HIS206', 'Friday', 6, '15:00:00', '15:50:00', 'Room 506'),
('HIS101', 'T005', 'HIS201', 'Friday', 7, '16:00:00', '16:50:00', 'Room 501');


INSERT INTO Fees (enrollment_id, amount, trans_date, payment_method, fee_status)
VALUES
-- Sample fees for students enrolled in CS101
('23CS1001', 1500.00, '2024-08-10', 'Credit Card', 'Paid'),
('23CS1002', 1500.00, '2024-08-10', 'Cash', 'Paid'),
('23CS1003', 1500.00, '2024-08-11', 'Bank Transfer', 'Paid'),
('23CS1004', 1500.00, '2024-08-12', 'Credit Card', 'Paid'),
('23CS1005', 1500.00, '2024-08-10', 'Cash', 'Paid'),
('23CS1006', 1500.00, '2024-08-15', 'Bank Transfer', 'Pending'),

-- Sample fees for students enrolled in BA101
('23BA1001', 1200.00, '2024-08-10', 'Credit Card', 'Paid'),
('23BA1002', 1200.00, '2024-08-12', 'Cash', 'Paid'),
('23BA1003', 1200.00, '2024-08-14', 'Bank Transfer', 'Overdue'),
('23BA1004', 1200.00, '2024-08-11', 'Cash', 'Paid'),
('23BA1005', 1200.00, '2024-08-13', 'Credit Card', 'Pending'),

-- Sample fees for students enrolled in PSY101
('23PSY1001', 1400.00, '2024-08-10', 'Credit Card', 'Paid'),
('23PSY1002', 1400.00, '2024-08-12', 'Cash', 'Pending'),
('23PSY1003', 1400.00, '2024-08-10', 'Bank Transfer', 'Paid'),

-- Sample fees for students enrolled in MAT101
('23MAT1001', 1300.00, '2024-08-15', 'Credit Card', 'Paid'),
('23MAT1002', 1300.00, '2024-08-16', 'Cash', 'Paid'),

-- Sample fees for students enrolled in HIS101
('23HIS1001', 1250.00, '2024-08-17', 'Bank Transfer', 'Overdue'),
('23HIS1002', 1250.00, '2024-08-20', 'Credit Card', 'Pending');


INSERT INTO CourseSubjects (course_id, subject_id)
VALUES
-- Subjects for CS101
('CS101', 'CS201'),
('CS101', 'CS202'),
('CS101', 'CS203'),
('CS101', 'CS204'),
('CS101', 'CS205'),
('CS101', 'CS206'),

-- Subjects for BA101
('BA101', 'BA201'),
('BA101', 'BA202'),
('BA101', 'BA203'),
('BA101', 'BA204'),
('BA101', 'BA205'),
('BA101', 'BA206'),

-- Subjects for PSY101
('PSY101', 'PSY201'),
('PSY101', 'PSY202'),
('PSY101', 'PSY203'),
('PSY101', 'PSY204'),
('PSY101', 'PSY205'),
('PSY101', 'PSY206'),

-- Subjects for MAT101
('MAT101', 'MAT201'),
('MAT101', 'MAT202'),
('MAT101', 'MAT203'),
('MAT101', 'MAT204'),
('MAT101', 'MAT205'),
('MAT101', 'MAT206'),

-- Subjects for HIS101
('HIS101', 'HIS201'),
('HIS101', 'HIS202'),
('HIS101', 'HIS203'),
('HIS101', 'HIS204'),
('HIS101', 'HIS205'),
('HIS101', 'HIS206');


INSERT INTO TeacherSubjects (teacher_id, subject_id)
VALUES
-- Subjects taught by Aarav Sharma (T001)
('T001', 'CS201'),
('T001', 'CS202'),
('T001', 'CS203'),

-- Subjects taught by Vivaan Gupta (T002)
('T002', 'BA201'),
('T002', 'BA202'),
('T002', 'BA203'),

-- Subjects taught by Aditya Patel (T003)
('T003', 'PSY201'),
('T003', 'PSY202'),
('T003', 'PSY203'),

-- Subjects taught by Vihaan Mehta (T004)
('T004', 'MAT201'),
('T004', 'MAT202'),
('T004', 'MAT203'),

-- Subjects taught by Arjun Singh (T005)
('T005', 'HIS201'),
('T005', 'HIS202'),
('T005', 'HIS203');


