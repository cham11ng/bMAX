-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2016 at 12:22 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmax_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `age_gender`
--

CREATE TABLE `age_gender` (
  `ag_id` int(11) NOT NULL,
  `age_group` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `age_gender`
--

INSERT INTO `age_gender` (`ag_id`, `age_group`, `gender`) VALUES
(1, 'Infant', 'Male'),
(2, 'Infant', 'Female'),
(3, 'Child', 'Male'),
(4, 'Child', 'Female'),
(5, 'Teenage', 'Male'),
(6, 'Teenage', 'Female'),
(7, 'Adult', 'Male'),
(8, 'Adult', 'Female'),
(9, 'Old', 'Male'),
(10, 'Old', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `body_part`
--

CREATE TABLE `body_part` (
  `b_id` int(11) NOT NULL,
  `bodyPart` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `body_part`
--

INSERT INTO `body_part` (`b_id`, `bodyPart`) VALUES
(1, 'Head'),
(2, 'Neck'),
(3, 'Chest'),
(4, 'Abdomen'),
(5, 'Legs');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `d_id` int(11) NOT NULL,
  `disease_definition` longtext,
  `disease_name` varchar(255) DEFAULT NULL,
  `preventive_measures` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`d_id`, `disease_definition`, `disease_name`, `preventive_measures`) VALUES
(1, 'Typhoid fever is caused by Salmonella typhi bacteria. Typhoid fever is rare in industrialized countries. However, it remains a serious health threat in the developing world, especially for children. Typhoid fever spreads through contaminated food and water or through close contact with someone who''s infected. Signs and symptoms usually include high fever, headache, abdominal pain, and either constipation or diarrhea.', 'Typhoid', '-A vaccine is recommended if you are travelling to areas where the risk of getting typhoid is high.: -Wash your hands in hot, soapy water before eating or preparing food and after using the toilet.: -Avoid drinking untreated water.: -Avoid raw fruits and vegetables.'),
(2, 'Pneumonia is an infection that inflames the air sacs in one or both lungs. The air sacs may fill with fluid or pus (purulent material), causing cough with phlegm or pus, fever, chills, and difficulty breathing. A variety of organisms, including bacteria, viruses and fungi, can cause pneumonia. Pneumonia can range in seriousness from mild to life-threatening. It is most serious for infants and young children, people older than age 65, and people with health problems or weakened immune systems.', 'Pneumonia', '-Do not smoke.: -Avoid people who have colds ot flu.: -Wash your hands often.'),
(3, 'Diabetes mellitus refers to a group of diseases that affect how your body uses blood sugar (glucose). Glucose is vital to your health because it''s an important source of energy for the cells that make up your muscles and tissues. It''s also your brain''s main source of fuel. If you have diabetes, no matter what type, it means you have too much glucose in your blood, although the causes may differ. Too much glucose can lead to serious health problems. Chronic diabetes conditions include type 1 diabetes and type 2 diabetes. Potentially reversible diabetes conditions include prediabetes — when your blood sugar levels are higher than normal, but not high enough to be classified as diabetes — and gestational diabetes, which occurs during pregnancy but may resolve after the baby is delivered', 'Diabetes', '-Get more physical exercise.: -Loose extra weight.: -Avoid food with high carbohydrate.'),
(4, 'Diarrhea describes loose, watery stools that occur more frequently than usual. You may also experience abdominal cramps and a greater volume of stool. Diarrhea varies in specific symptoms, severity and duration. Acute diarrhea usually lasts for a few days and is typically caused by a bacterial, viral or parasitic infection of some sort. Chronic diarrhea persists longer than does acute diarrhea, generally longer than three weeks. Chronic diarrhea can indicate a serious disorder, such as ulcerative colitis or Crohn''s disease, or a less serious condition, such as irritable bowel syndrome.', 'Diarrhoea', '-Avoid eating uncooked and unwashed vegetables.: -Wash your hands with soap frequently.: -Avoid drinking untreated water.'),
(5, 'Tonsillitis is inflammation of the tonsils, two oval-shaped pads of tissue at the back of the throat — one tonsil on each side. Signs and symptoms of tonsillitis include swollen tonsils, sore throat, difficulty swallowing and tender lymph nodes on the sides of the neck. Most cases of tonsillitis are caused by infection with a common virus, but bacterial infections also may cause tonsillitis.', 'Tonsillitis', '-Wash your hands thoroughly and frequently, especially after using the toilet and before eating.: -Avoid eating and drinking cold food and drinks.: -Do not smoke.'),
(6, 'Jaundice is a medical condition that causes a slight yellowing of the skin. Many newborn babies are diagnosed with slight jaundice and need to spend time in the sunlight every day for a few weeks. A patient with jaundice looks a little yellow, a condition that''s caused by excess pigmentation due to deficiencies in the liver or bile duct. One common medical cause of jaundice is hepatitis, a liver condition. Another meaning of jaundice is the distortion of opinions due especially to envy or resentment.', 'Jaundice', '-Avoid or drink minimum alcohol.: -Drink clean water.: -Eat warm anf fresh food.'),
(7, 'Sinusitis is an inflammation, or swelling, of the tissue lining the sinuses. Normally, sinuses are filled with air. But when they become blocked and filled with fluid, germs (bacteria, viruses, and fungi) can grow and cause an infection. Conditions that can cause sinus blockage include the common cold, allergic rhinitis (swelling of the lining of the nose), nasal polyps (small growths in that lining), or a deviated septum (a shift in the nasal cavity).', 'Sinusitis', '-Avoid cigarette, cigar and pipe smoke.: -Materials that give off fumes can all make your sinus problems worse, so avoid cleaning products, hairspray, and other materials that give off fumes.: -Avoid long periods of swimming in pools treated with chlorine, which can irritate the lining of the nose and sinuses.'),
(8, 'Gastritis describes a group of conditions with one thing in common: inflammation of the lining of the stomach. The inflammation of gastritis is most often the result of infection with the same bacterium that causes most stomach ulcers. Injury, regular use of certain pain relievers and drinking too much alcohol also can contribute to gastritis. Gastritis may occur suddenly (acute gastritis), or it can occur slowly over time (chronic gastritis). In some cases, gastritis can lead to ulcers and an increased risk of stomach cancer. For most people, however, gastritis isn''t serious and improves quickly with treatment.', 'Gastritis', '-Have proper and a balanced diet consisting of fruits, vegetables, and cereals pulses.: -Drink plenty of water but not with the meal as it can delay the digestion process.: -Give proper gap between meals.: -Make a habit of eating food slowly and chew your food properly.: -Reduce stress (e.g., through meditation, yoga or massage)');

-- --------------------------------------------------------

--
-- Table structure for table `diseasesymptom_agegender`
--

CREATE TABLE `diseasesymptom_agegender` (
  `ds_id` int(11) NOT NULL,
  `ag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diseasesymptom_agegender`
--

INSERT INTO `diseasesymptom_agegender` (`ds_id`, `ag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(14, 9),
(14, 10),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(16, 7),
(16, 8),
(16, 9),
(16, 10),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(17, 8),
(17, 9),
(17, 10),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 8),
(18, 9),
(18, 10),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(19, 10),
(20, 7),
(20, 8),
(20, 9),
(20, 10),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 10),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(23, 5),
(23, 6),
(23, 7),
(23, 8),
(23, 9),
(23, 10),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 8),
(24, 9),
(24, 10),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(25, 7),
(25, 8),
(25, 9),
(25, 10),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 8),
(26, 9),
(26, 10),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 8),
(27, 9),
(27, 10),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 6),
(29, 7),
(29, 8),
(29, 9),
(29, 10),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(31, 10),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 9),
(32, 10),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(34, 9),
(34, 10),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(35, 5),
(35, 6),
(35, 7),
(35, 8),
(35, 9),
(35, 10),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(36, 6),
(36, 7),
(36, 8),
(36, 9),
(36, 10),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(37, 5),
(37, 6),
(37, 7),
(37, 8),
(37, 9),
(37, 10),
(38, 1),
(38, 2),
(38, 3),
(38, 4),
(38, 5),
(38, 6),
(38, 7),
(38, 8),
(38, 9),
(38, 10),
(39, 1),
(39, 2),
(39, 3),
(39, 4),
(39, 5),
(39, 6),
(39, 7),
(39, 8),
(39, 9),
(39, 10),
(40, 1),
(40, 2),
(40, 3),
(40, 4),
(40, 5),
(40, 6),
(40, 7),
(40, 8),
(40, 9),
(40, 10),
(41, 1),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(41, 6),
(41, 7),
(41, 8),
(41, 9),
(41, 10),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(42, 6),
(42, 7),
(42, 8),
(42, 9),
(42, 10),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(43, 5),
(43, 6),
(43, 7),
(43, 8),
(43, 9),
(43, 10),
(44, 1),
(44, 2),
(44, 3),
(44, 4),
(44, 5),
(44, 6),
(44, 7),
(44, 8),
(44, 9),
(44, 10),
(45, 1),
(45, 2),
(45, 3),
(45, 4),
(45, 5),
(45, 6),
(45, 7),
(45, 8),
(45, 9),
(45, 10),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(46, 5),
(46, 6),
(46, 7),
(46, 8),
(46, 9),
(46, 10),
(47, 1),
(47, 2),
(47, 3),
(47, 4),
(47, 5),
(47, 6),
(47, 7),
(47, 8),
(47, 9),
(47, 10),
(48, 1),
(48, 2),
(48, 3),
(48, 4),
(48, 5),
(48, 6),
(48, 7),
(48, 8),
(48, 9),
(48, 10),
(49, 1),
(49, 2),
(49, 3),
(49, 4),
(49, 5),
(49, 6),
(49, 7),
(49, 8),
(49, 9),
(49, 10);

-- --------------------------------------------------------

--
-- Table structure for table `disease_symptom`
--

CREATE TABLE `disease_symptom` (
  `d_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease_symptom`
--

INSERT INTO `disease_symptom` (`d_id`, `s_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 16),
(1, 31),
(2, 1),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 5),
(3, 15),
(3, 32),
(3, 33),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 9),
(4, 21),
(5, 22),
(5, 1),
(5, 23),
(5, 24),
(6, 5),
(6, 21),
(6, 1),
(6, 3),
(6, 25),
(6, 26),
(6, 34),
(7, 1),
(7, 2),
(7, 27),
(7, 28),
(7, 15),
(8, 4),
(8, 20),
(8, 29),
(8, 30),
(8, 17);

-- --------------------------------------------------------

--
-- Stand-in structure for view `disease_symptom_count`
--
CREATE TABLE `disease_symptom_count` (
`ds_id` int(11)
,`symptom_name` varchar(255)
,`disease_name` varchar(255)
,`counter` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `id_disease_symptom`
--

CREATE TABLE `id_disease_symptom` (
  `ds_id` int(11) NOT NULL,
  `d_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_disease_symptom`
--

INSERT INTO `id_disease_symptom` (`ds_id`, `d_id`, `s_id`, `counter`) VALUES
(1, 1, 1, 80),
(2, 1, 2, 60),
(3, 1, 3, 60),
(4, 1, 4, 70),
(5, 1, 5, 50),
(6, 1, 16, 25),
(7, 1, 31, 25),
(8, 2, 1, 80),
(9, 2, 6, 70),
(10, 2, 7, 50),
(11, 2, 8, 30),
(12, 3, 9, 70),
(13, 3, 10, 40),
(14, 3, 11, 80),
(15, 3, 12, 65),
(16, 3, 13, 35),
(17, 3, 14, 90),
(18, 3, 5, 85),
(19, 3, 15, 10),
(20, 3, 32, 30),
(21, 3, 33, 8),
(22, 4, 16, 95),
(23, 4, 17, 85),
(24, 4, 18, 50),
(25, 4, 19, 30),
(26, 4, 20, 20),
(27, 4, 9, 67),
(28, 4, 21, 59),
(29, 5, 22, 88),
(30, 5, 1, 82),
(31, 5, 23, 74),
(32, 5, 24, 12),
(33, 6, 5, 49),
(34, 6, 21, 28),
(35, 6, 1, 84),
(36, 6, 3, 56),
(37, 6, 25, 94),
(38, 6, 26, 24),
(39, 6, 34, 91),
(40, 7, 1, 21),
(41, 7, 2, 94),
(42, 7, 27, 71),
(43, 7, 28, 69),
(44, 7, 15, 50),
(45, 8, 4, 73),
(46, 8, 20, 69),
(47, 8, 29, 53),
(48, 8, 30, 61),
(49, 8, 17, 24);

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `q_id` bigint(20) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `a1` char(20) DEFAULT NULL,
  `a2` char(20) DEFAULT NULL,
  `a3` char(20) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `d_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`q_id`, `question`, `a1`, `a2`, `a3`, `parent`, `d_id`) VALUES
(1, 'Is your fever increasing gradually?', 'Yes', 'No', NULL, 0, 1),
(2, 'What is your temperature?', 'Between 100 to 103', 'Between 103 to 104', NULL, 1, 1),
(3, 'Do you have greenish or yellow mucus in your cough?', 'Yes', 'No', 'Not sure', 0, 2),
(4, 'Do you have shortness of breath even if you do light work?', 'Yes', 'No', NULL, 0, 2),
(5, 'Do you have chest pain when breathing or coughing?', 'Yes', 'No', NULL, 0, 2),
(6, 'Do you feel hungry even if you eat regularly?', 'Yes', 'No', NULL, 0, 3),
(7, 'Does any of your family members have diabetics?', 'Yes', 'No', NULL, 0, 3),
(8, 'Do you pee every two three hours?', 'Yes', 'No', NULL, 0, 3),
(9, 'Do you have difficult in swallowing?', 'Yes', 'No', NULL, 0, 5),
(10, 'Did you have cold drinks or foods?', 'Yes', 'No', NULL, 0, 5),
(11, 'Do you have sore throat longer than 48 hours?', 'Yes', 'No', NULL, 0, 5),
(12, 'Do you often consume alcohol?', 'Yes', 'No', NULL, 0, 6),
(13, 'Is your white of the eyes yellowish?', 'Yes', 'No', NULL, 0, 6),
(14, 'Do you feel pressure like pain behind this eyes?', 'Yes', 'No', NULL, 19, 7),
(15, 'Have you been fasting?', 'Yes', 'No', NULL, 0, 8),
(16, 'Have you been eating untimely?', 'Yes', 'No', NULL, 0, 8),
(17, 'Do you have pain in your upper stomach?', 'Yes', 'No', NULL, 0, 8),
(18, 'Nothing', 'Yes', 'No', NULL, 0, 0),
(19, 'Do you have headache in one side of you head/face?', 'Yes', 'No', NULL, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `s_id` int(11) NOT NULL,
  `symptom_name` varchar(255) DEFAULT NULL,
  `bodyPart_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`s_id`, `symptom_name`, `bodyPart_id`) VALUES
(1, 'Fever', 1),
(2, 'Headache', 1),
(3, 'Weakness', NULL),
(4, 'Loss of appetite', 4),
(5, 'Weight Loss', NULL),
(6, 'Cough', 2),
(7, 'Chest Pain', 3),
(8, 'Shortness of breath', 3),
(9, 'Dehydration', 1),
(10, 'Hunger', 4),
(11, 'Peeing more often', 5),
(12, 'Dry mouth', 1),
(13, 'Itchy skin', NULL),
(14, 'Slow healinf sores and cuts', NULL),
(15, 'Blurr Vision', 1),
(16, 'Frequent loose', 4),
(17, 'Watery stool', 4),
(18, 'Bloating', 4),
(19, 'Nausea', NULL),
(20, 'Vomiting', NULL),
(21, 'Abdominal pain', 4),
(22, 'Sore throat', 3),
(23, 'Swollen gland', 3),
(24, 'Chills', NULL),
(25, 'Yellow tinge to skin', NULL),
(26, 'Dark urine', 5),
(27, 'Nasal Discharge', 1),
(28, 'Facial pain', 1),
(29, 'Stomach pain', 4),
(30, 'Upset stomach', 4),
(31, 'Constipation', 4),
(32, 'Numbness in feet and legs', 5),
(33, 'Not improved diper rash', 5),
(34, 'Yellowish eyes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `training_set`
--

CREATE TABLE `training_set` (
  `id` int(11) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `symptoms` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `calcProb` double DEFAULT NULL,
  `newDisease` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_set`
--

INSERT INTO `training_set` (`id`, `age`, `gender`, `symptoms`, `disease`, `calcProb`, `newDisease`) VALUES
(1, 'Child', 'Male', 'Frequent loose', 'Typhoid', 1, 'Diarrhoea'),
(2, 'Child', 'Female', 'Frequent loose', 'Typhoid', 1, 'Diarrhoea'),
(3, 'Infant', 'Male', 'Frequent loose', 'Typhoid', 1, 'Diarrhoea'),
(4, 'Infant', 'Female', 'Frequent loose', 'Typhoid', 1, 'Diarrhoea'),
(5, 'Teenage', 'Male', 'Frequent loose', 'Typhoid', 1, 'Typhoid'),
(6, 'Teenage', 'Female', 'Frequent loose', 'Typhoid', 1, 'Typhoid'),
(7, 'Adult', 'Male', 'Constipation', 'Typhoid', 0.5, 'Typhoid'),
(8, 'Adult', 'Female', 'Constipation', 'Typhoid', 0.5, 'Typhoid'),
(9, 'Old', 'Male', 'Constipation', 'Typhoid', 0.5, 'Typhoid'),
(10, 'Old', 'Female', 'Constipation', 'Typhoid', 0.5, 'Typhoid'),
(11, 'Teenage', 'Male', 'Constipation', 'Typhoid', 1, 'Typhoid'),
(12, 'Teenage', 'Female', 'Constipation', 'Typhoid', 1, 'Typhoid'),
(13, 'Adult', 'Male', 'Itchy skin', 'Diabetes', 0.8, 'Diabetes'),
(14, 'Adult', 'Female', 'Itchy skin', 'Diabetes', 0.8, 'Diabetes'),
(15, 'Old', 'Male', 'Itchy skin', 'Diabetes', 0.8, 'Diabetes'),
(16, 'Old', 'Female', 'Itchy skin', 'Diabetes', 0.8, 'Diabetes'),
(17, 'Adult', 'Male', 'Numbness in feet and legs', 'Diabetes', 0.8, 'Diabetes'),
(18, 'Adult', 'Female', 'Numbness in feet and legs', 'Diabetes', 0.8, 'Diabetes'),
(19, 'Old', 'Male', 'Numbness in feet and legs', 'Diabetes', 0.8, 'Diabetes'),
(20, 'Old', 'Female', 'Numbness in feet and legs', 'Diabetes', 0.8, 'Diabetes'),
(21, 'Infant', 'Male', 'Not improved diper rash', 'Diabetes', 0.2, 'Diabetes'),
(22, 'Infant', 'Female', 'Not improved diper rash', 'Diabetes', 0.2, 'Diabetes'),
(23, 'Teenage', 'Male', 'Facial pain', 'Sinusitis', 1, 'Sinusitis'),
(24, 'Teenage', 'Female', 'Facial pain', 'Sinusitis', 1, 'Sinusitis'),
(25, 'Child', 'Male', 'Facial pain', 'Sinusitis', 1, 'Sinusitis'),
(26, 'Child', 'Female', 'Facial pain', 'Sinusitis', 1, 'Sinusitis'),
(27, 'Adult', 'Male', 'Facial pain', 'Sinusitis', 1, 'Sinusitis'),
(28, 'Adult', 'Female', 'Facial pain', 'Sinusitis', 1, 'Sinusitis'),
(29, 'Teenage', 'Male', 'Headache', 'Sinusitis', 1, 'Sinusitis'),
(30, 'Teenage', 'Female', 'Headache', 'Sinusitis', 1, 'Sinusitis'),
(31, 'Child', 'Male', 'Headache', 'Sinusitis', 1, 'Sinusitis'),
(32, 'Child', 'Female', 'Headache', 'Sinusitis', 1, 'Sinusitis'),
(33, 'Adult', 'Male', 'Headache', 'Sinusitis', 1, 'Sinusitis'),
(34, 'Adult', 'Female', 'Headache', 'Sinusitis', 1, 'Sinusitis'),
(35, 'Infant', 'Male', 'Frequent loose', 'Diarrhoea', 1, 'Diarrhoea'),
(36, 'Infant', 'Female', 'Frequent loose', 'Diarrhoea', 1, 'Diarrhoea'),
(37, 'Child', 'Male', 'Frequent loose', 'Diarrhoea', 1, 'Diarrhoea'),
(38, 'Child', 'Female', 'Frequent loose', 'Diarrhoea', 1, 'Diarrhoea'),
(39, 'Infant', 'Male', 'Watery stool', 'Diarrhoea', 1, 'Diarrhoea'),
(40, 'Infant', 'Female', 'Watery stool', 'Diarrhoea', 1, 'Diarrhoea'),
(41, 'Child', 'Male', 'Watery stool', 'Diarrhoea', 1, 'Diarrhoea'),
(42, 'Child', 'Female', 'Watery stool', 'Diarrhoea', 1, 'Diarrhoea'),
(43, 'Child', 'Male', 'Sore throat', 'Tonsillitis', 0, 'Typhoid'),
(44, 'Child', 'Female', 'Sore throat', 'Tonsillitis', 0, 'Typhoid'),
(45, 'Teenage', 'Male', 'Sore throat', 'Tonsillitis', 0, 'Typhoid'),
(46, 'Teenage', 'Female', 'Sore throat', 'Tonsillitis', 0, 'Typhoid'),
(47, 'Child', 'Male', 'Swollen gland', 'Tonsillitis', 0, 'Typhoid'),
(48, 'Child', 'Female', 'Swollen gland', 'Tonsillitis', 0, 'Typhoid'),
(49, 'Teenage', 'Male', 'Swollen gland', 'Tonsillitis', 0, 'Typhoid'),
(50, 'Teenage', 'Female', 'Swollen gland', 'Tonsillitis', 0, 'Typhoid'),
(51, 'Infant', 'Male', 'Yellow tinge to skin', 'Jaundice', 1, 'Jaundice'),
(52, 'Infant', 'Female', 'Yellow tinge to skin', 'Jaundice', 1, 'Jaundice'),
(53, 'Adult', 'Male', 'Yellow tinge to skin', 'Jaundice', 1, 'Jaundice'),
(54, 'Adult', 'Female', 'Yellow tinge to skin', 'Jaundice', 1, 'Jaundice'),
(55, 'Teenage', 'Male', 'Yellow tinge to skin', 'Jaundice', 1, 'Jaundice'),
(56, 'Teenage', 'Female', 'Yellow tinge to skin', 'Jaundice', 1, 'Jaundice'),
(57, 'Infant', 'Male', 'Yellowish eyes', 'Jaundice', 1, 'Jaundice'),
(58, 'Infant', 'Female', 'Yellowish eyes', 'Jaundice', 1, 'Jaundice'),
(59, 'Adult', 'Male', 'Yellowish eyes', 'Jaundice', 1, 'Jaundice'),
(60, 'Adult', 'Female', 'Yellowish eyes', 'Jaundice', 1, 'Jaundice'),
(61, 'Teenage', 'Male', 'Yellowish eyes', 'Jaundice', 1, 'Jaundice'),
(62, 'Teenage', 'Female', 'Yellowish eyes', 'Jaundice', 1, 'Jaundice'),
(63, 'Adult', 'Male', 'Loss of appetite', 'Gastritis', 1, 'Gastritis'),
(64, 'Adult', 'Female', 'Loss of appetite', 'Gastritis', 1, 'Gastritis'),
(65, 'Old', 'Male', 'Loss of appetite', 'Gastritis', 1, 'Gastritis'),
(66, 'Old', 'Female', 'Loss of appetite', 'Gastritis', 1, 'Gastritis'),
(67, 'Teenage', 'Male', 'Loss of appetite', 'Gastritis', 1, 'Gastritis'),
(68, 'Teenage', 'Female', 'Loss of appetite', 'Gastritis', 1, 'Gastritis'),
(69, 'Adult', 'Male', 'Upset stomach', 'Gastritis', 1, 'Gastritis'),
(70, 'Adult', 'Female', 'Upset stomach', 'Gastritis', 1, 'Gastritis'),
(71, 'Old', 'Male', 'Upset stomach', 'Gastritis', 1, 'Gastritis'),
(72, 'Old', 'Female', 'Upset stomach', 'Gastritis', 1, 'Gastritis'),
(73, 'Teenage', 'Male', 'Upset stomach', 'Gastritis', 1, 'Gastritis'),
(74, 'Teenage', 'Female', 'Upset stomach', 'Gastritis', 1, 'Gastritis'),
(75, 'Child', 'Male', 'Chest Pain', 'Pneumonia', 0.46153846, 'Pneumonia'),
(76, 'Child', 'Female', 'Chest Pain', 'Pneumonia', 0.46153846, 'Pneumonia'),
(77, 'Teenage', 'Male', 'Chest Pain', 'Pneumonia', 0.46153846, 'Pneumonia'),
(78, 'Teenage', 'Female', 'Chest Pain', 'Pneumonia', 0.46153846, 'Pneumonia'),
(79, 'Child', 'Male', 'Fever', 'Pneumonia', 1.153846, 'Pneumonia'),
(80, 'Child', 'Female', 'Fever', 'Pneumonia', 1.153846, 'Pneumonia'),
(81, 'Teenage', 'Male', 'Fever', 'Pneumonia', 1.153846, 'Pneumonia'),
(82, 'Teenage', 'Female', 'Fever', 'Pneumonia', 1.153846, 'Pneumonia'),
(83, 'Child', 'Male', 'Shortness of breath', 'Pneumonia', 0.9230769, 'Pneumonia'),
(84, 'Child', 'Female', 'Shortness of breath', 'Pneumonia', 0.9230769, 'Pneumonia'),
(85, 'Teenage', 'Male', 'Shortness of breath', 'Pneumonia', 0.9230769, 'Pneumonia'),
(86, 'Teenage', 'Female', 'Shortness of breath', 'Pneumonia', 0.9230769, 'Pneumonia'),
(87, 'Adult', 'Male', 'Shortness of breath', 'Pneumonia', 0.9230769, 'Pneumonia'),
(88, 'Adult', 'Female', 'Shortness of breath', 'Pneumonia', 0.9230769, 'Pneumonia'),
(89, 'Old', 'Male', 'Shortness of breath', 'Pneumonia', 0.9230769, 'Pneumonia'),
(90, 'Old', 'Female', 'Shortness of breath', 'Pneumonia', 0.9230769, 'Pneumonia'),
(91, 'Adult', 'Male', 'Fever', 'Pneumonia', 1.153846, 'Pneumonia'),
(92, 'Adult', 'Female', 'Fever', 'Pneumonia', 1.153846, 'Pneumonia'),
(93, 'Old', 'Male', 'Fever', 'Pneumonia', 1.153846, 'Pneumonia'),
(94, 'Old', 'Female', 'Fever', 'Pneumonia', 1.153846, 'Pneumonia'),
(95, 'Infant', 'Male', 'Fever', 'Pneumonia', 0.38461542, 'Pneumonia'),
(96, 'Infant', 'Female', 'Fever', 'Pneumonia', 0.38461542, 'Pneumonia'),
(97, 'Adult', 'Male', 'Cough', 'Pneumonia', 0.46153846, 'Pneumonia'),
(98, 'Adult', 'Female', 'Cough', 'Pneumonia', 0.46153846, 'Pneumonia'),
(99, 'Old', 'Male', 'Cough', 'Pneumonia', 0.46153846, 'Pneumonia'),
(100, 'Old', 'Female', 'Cough', 'Pneumonia', 0.46153846, 'Pneumonia');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `name` char(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `name`, `count`) VALUES
(1, 'index.php', 94),
(2, 'about.php', 44),
(3, 'csymptom.php', 410),
(4, 'mterm.php', 75),
(5, 'bselect.php', 702),
(6, 'report.php', 202);

-- --------------------------------------------------------

--
-- Structure for view `disease_symptom_count`
--
DROP TABLE IF EXISTS `disease_symptom_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `disease_symptom_count`  AS  select `id_disease_symptom`.`ds_id` AS `ds_id`,`symptoms`.`symptom_name` AS `symptom_name`,`diseases`.`disease_name` AS `disease_name`,`id_disease_symptom`.`counter` AS `counter` from ((`id_disease_symptom` join `diseases` on((`id_disease_symptom`.`d_id` = `diseases`.`d_id`))) join `symptoms` on((`id_disease_symptom`.`s_id` = `symptoms`.`s_id`))) where ((`id_disease_symptom`.`s_id` = `symptoms`.`s_id`) and (`id_disease_symptom`.`d_id` = `diseases`.`d_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `age_gender`
--
ALTER TABLE `age_gender`
  ADD PRIMARY KEY (`ag_id`);

--
-- Indexes for table `body_part`
--
ALTER TABLE `body_part`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `diseasesymptom_agegender`
--
ALTER TABLE `diseasesymptom_agegender`
  ADD KEY `FKA0911BEEEC15631F` (`ag_id`),
  ADD KEY `FKA0911BEEC54504C8` (`ds_id`);

--
-- Indexes for table `disease_symptom`
--
ALTER TABLE `disease_symptom`
  ADD KEY `FKB6F00A6652D52D62` (`d_id`),
  ADD KEY `FKB6F00A66ADD7D7E6` (`s_id`);

--
-- Indexes for table `id_disease_symptom`
--
ALTER TABLE `id_disease_symptom`
  ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `FK6B5A176A6432C5AF` (`bodyPart_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `age_gender`
--
ALTER TABLE `age_gender`
  MODIFY `ag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `body_part`
--
ALTER TABLE `body_part`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `id_disease_symptom`
--
ALTER TABLE `id_disease_symptom`
  MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `q_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `diseasesymptom_agegender`
--
ALTER TABLE `diseasesymptom_agegender`
  ADD CONSTRAINT `FKA0911BEEC54504C8` FOREIGN KEY (`ds_id`) REFERENCES `id_disease_symptom` (`ds_id`),
  ADD CONSTRAINT `FKA0911BEEEC15631F` FOREIGN KEY (`ag_id`) REFERENCES `age_gender` (`ag_id`);

--
-- Constraints for table `disease_symptom`
--
ALTER TABLE `disease_symptom`
  ADD CONSTRAINT `FKB6F00A6652D52D62` FOREIGN KEY (`d_id`) REFERENCES `diseases` (`d_id`),
  ADD CONSTRAINT `FKB6F00A66ADD7D7E6` FOREIGN KEY (`s_id`) REFERENCES `symptoms` (`s_id`);

--
-- Constraints for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD CONSTRAINT `FK6B5A176A6432C5AF` FOREIGN KEY (`bodyPart_id`) REFERENCES `body_part` (`b_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
