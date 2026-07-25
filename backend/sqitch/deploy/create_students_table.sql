-- Deploy student management: create_students_table to pg.

BEGIN;

CREATE TABLE IF NOT EXISTS students(
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  age VARCHAR(3) NOT NULL,
  address TEXT NOT NULL,
  grade VARCHAR(50) NOT NULL,
  gender VARCHAR(50) NOT NULL CHECK (gender IN('Male', 'Female', 'Other')),
  joining_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

INSERT INTO students (name, phone, email, age, address, grade, gender, joining_date) VALUES
('Aung Min', '0911111001', 'aung.min@gmail.com', '15', 'Yangon', 'Grade 9', 'Male', '2025-06-01'),
('Su Su Hlaing', '0911111002', 'susu.hlaing@gmail.com', '16', 'Mandalay', 'Grade 10', 'Female', '2025-06-01'),
('Kyaw Zin', '0911111003', 'kyaw.zin@gmail.com', '17', 'Bago', 'Grade 11', 'Male', '2025-06-01'),
('May Thu', '0911111004', 'may.thu@gmail.com', '18', 'Naypyidaw', 'Grade 12', 'Female', '2025-06-01'),

('Ko Ko Aung', '0911111005', 'koko.aung@gmail.com', '15', 'Yangon', 'Grade 10', 'Male', '2025-06-01'),
('Ei Ei Win', '0911111006', 'eiei.win@gmail.com', '16', 'Pathein', 'Grade 9', 'Female', '2025-06-15'),
('Min Htet', '0911111007', 'min.htet@gmail.com', '17', 'Taunggyi', 'Grade 12', 'Male', '2025-06-15'),
('Thiri Mon', '0911111008', 'thiri.mon@gmail.com', '18', 'Mawlamyine', 'Grade 11', 'Female', '2025-06-15'),

('Zaw Zaw', '0911111009', 'zaw.zaw@gmail.com', '15', 'Yangon', 'Grade 11', 'Male', '2025-06-15'),
('Hnin Ei Phyu', '0911111010', 'hnin.ei@gmail.com', '16', 'Mandalay', 'Grade 12', 'Female', '2025-07-01'),

('Aye Chan', '0911111011', 'aye.chan@gmail.com', '17', 'Bago', 'Grade 9', 'Female', '2025-07-01'),
('Sai Lin', '0911111012', 'sai.lin@gmail.com', '18', 'Shan', 'Grade 10', 'Male', '2025-07-01'),
('Nandar', '0911111013', 'nandar@gmail.com', '15', 'Yangon', 'Grade 12', 'Female', '2025-07-01'),
('Ye Yint', '0911111014', 'ye.yint@gmail.com', '16', 'Mandalay', 'Grade 11', 'Male', '2025-07-01'),

('Mya Mya', '0911111015', 'mya.mya@gmail.com', '17', 'Yangon', 'Grade 10', 'Female', '2025-07-15'),
('Thet Naing', '0911111016', 'thet.naing@gmail.com', '18', 'Pyay', 'Grade 9', 'Male', '2025-07-15'),
('Wai Wai', '0911111017', 'wai.wai@gmail.com', '15', 'Pathein', 'Grade 11', 'Female', '2025-07-15'),
('Htet Aung', '0911111018', 'htet.aung@gmail.com', '16', 'Bago', 'Grade 12', 'Male', '2025-07-15'),

('Khin Thazin', '0911111019', 'khin.thazin@gmail.com', '17', 'Yangon', 'Grade 9', 'Female', '2025-07-15'),
('Aung Kyaw', '0911111020', 'aung.kyaw@gmail.com', '18', 'Mandalay', 'Grade 10', 'Male', '2025-08-01'),

('Phyo Thu', '0911111021', 'phyo.thu@gmail.com', '15', 'Yangon', 'Grade 12', 'Male', '2025-08-01'),
('Cherry', '0911111022', 'cherry@gmail.com', '16', 'Naypyidaw', 'Grade 11', 'Female', '2025-08-01'),
('Lin Lin', '0911111023', 'lin.lin@gmail.com', '17', 'Bago', 'Grade 10', 'Male', '2025-08-01'),
('Su Wai', '0911111024', 'su.wai@gmail.com', '18', 'Taunggyi', 'Grade 9', 'Female', '2025-08-01'),

('Kaung Myat', '0911111025', 'kaung.myat@gmail.com', '15', 'Yangon', 'Grade 11', 'Male', '2025-08-15'),
('May Zin', '0911111026', 'may.zin@gmail.com', '16', 'Mandalay', 'Grade 12', 'Female', '2025-08-15'),
('Thant Zin', '0911111027', 'thant.zin@gmail.com', '17', 'Bago', 'Grade 9', 'Male', '2025-08-15'),
('Ei Mon', '0911111028', 'ei.mon@gmail.com', '18', 'Yangon', 'Grade 10', 'Female', '2025-08-15'),

('Kyaw Kyaw', '0911111029', 'kyaw.kyaw@gmail.com', '15', 'Pathein', 'Grade 12', 'Male', '2025-08-15'),
('May Myat', '0911111030', 'may.myat@gmail.com', '16', 'Yangon', 'Grade 11', 'Female', '2025-09-01'),

('Nay Lin', '0911111031', 'nay.lin@gmail.com', '17', 'Mandalay', 'Grade 10', 'Male', '2025-09-01'),
('Hla Hla', '0911111032', 'hla.hla@gmail.com', '18', 'Bago', 'Grade 9', 'Female', '2025-09-01'),
('Win Htet', '0911111033', 'win.htet@gmail.com', '15', 'Yangon', 'Grade 11', 'Male', '2025-09-01'),
('Su Mon', '0911111034', 'su.mon@gmail.com', '16', 'Shan', 'Grade 12', 'Female', '2025-09-01'),

('Sai Htun', '0911111035', 'sai.htun@gmail.com', '17', 'Taunggyi', 'Grade 9', 'Male', '2025-09-15'),
('Thazin Oo', '0911111036', 'thazin.oo@gmail.com', '18', 'Yangon', 'Grade 10', 'Female', '2025-09-15'),
('Moe Aung', '0911111037', 'moe.aung@gmail.com', '15', 'Mandalay', 'Grade 12', 'Male', '2025-09-15'),
('Kyal Sin', '0911111038', 'kyal.sin@gmail.com', '16', 'Bago', 'Grade 11', 'Female', '2025-09-15'),

('Aung Htet', '0911111039', 'aung.htet@gmail.com', '17', 'Yangon', 'Grade 10', 'Male', '2025-09-15'),
('Phyu Phyu', '0911111040', 'phyu.phyu@gmail.com', '18', 'Naypyidaw', 'Grade 9', 'Female', '2025-09-15');

COMMIT;
