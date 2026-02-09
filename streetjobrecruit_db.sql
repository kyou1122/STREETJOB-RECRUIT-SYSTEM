-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2026 at 07:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `streetjobrecruit_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `status` enum('Pending','Reviewed','Shortlisted','Hired','Rejected') DEFAULT 'Pending',
  `applied_at` datetime DEFAULT current_timestamp(),
  `note` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `job_id`, `seeker_id`, `status`, `applied_at`, `note`) VALUES
(2, 2, 4, 'Pending', '2025-11-04 00:32:05', 'Application submitted and pending review.'),
(7, 6, 5, 'Pending', '2025-11-19 21:24:30', 'Application submitted and pending review.'),
(8, 11, 5, 'Pending', '2025-11-19 21:37:03', 'Application submitted and pending review.'),
(9, 4, 5, 'Pending', '2025-11-19 21:38:02', 'Application submitted and pending review.'),
(10, 8, 5, 'Pending', '2025-11-19 21:38:32', 'Application submitted and pending review.'),
(11, 7, 5, 'Pending', '2025-11-19 21:45:31', 'Application submitted and pending review.'),
(12, 13, 5, 'Pending', '2025-11-21 15:02:43', 'Application submitted and pending review.'),
(13, 41, 27, 'Pending', '2025-11-24 21:58:25', 'Application submitted and pending review.'),
(14, 14, 21, 'Pending', '2025-11-20 09:15:00', 'Application submitted and pending review.'),
(15, 15, 22, 'Reviewed', '2025-11-19 14:30:00', 'Application under review. Waiting for additional d'),
(16, 16, 23, 'Shortlisted', '2025-11-18 11:45:00', 'Strong background in customer service. Schedule fo'),
(17, 17, 24, 'Pending', '2025-11-15 16:20:00', 'Excellent candidate with relevant experience. Star'),
(18, 18, 25, 'Rejected', '2025-11-17 13:10:00', 'Candidate lacks required experience for this super'),
(19, 20, 26, 'Hired', '2025-11-21 10:05:00', 'Application submitted and pending review.'),
(20, 22, 27, 'Reviewed', '2025-11-20 15:40:00', 'Good communication skills'),
(21, 26, 28, 'Shortlisted', '2025-11-19 09:30:00', 'Retail experience suitable'),
(22, 32, 29, 'Hired', '2025-11-16 14:15:00', 'Technical skills excellent'),
(23, 38, 30, 'Rejected', '2025-11-18 11:20:00', 'Insufficient F&B experience'),
(24, 41, 21, 'Pending', '2025-11-22 08:45:00', 'Application submitted and pending review.'),
(25, 44, 22, 'Reviewed', '2025-11-21 12:30:00', 'Manufacturing background'),
(26, 50, 23, 'Shortlisted', '2025-11-20 10:15:00', 'Math teaching capability good'),
(27, 55, 24, 'Hired', '2025-11-17 15:50:00', 'Management experience strong'),
(28, 58, 25, 'Rejected', '2025-11-19 13:25:00', 'Electrical certification expired'),
(30, 35, 5, 'Rejected', '2025-12-09 14:39:11', 'no suitable for this job'),
(31, 54, 5, 'Pending', '2025-12-09 14:39:29', 'Application submitted and pending review.'),
(32, 59, 5, 'Pending', '2025-12-09 14:40:57', 'Application submitted and pending review.'),
(33, 40, 5, 'Pending', '2025-12-09 14:47:34', 'Application submitted and pending review.'),
(35, 64, 5, 'Hired', '2025-12-29 17:10:14', 'please come to office after 10 AM'),
(36, 28, 5, 'Pending', '2025-12-29 17:20:23', 'Application submitted and pending review.');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `company_name` varchar(15) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `responsibilities` longtext DEFAULT NULL,
  `qualifications` longtext DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  `job_type` varchar(20) DEFAULT NULL,
  `experience_level` varchar(100) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `job_category` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `employer_id`, `title`, `company_name`, `description`, `responsibilities`, `qualifications`, `benefits`, `salary`, `job_type`, `experience_level`, `location`, `job_category`, `is_active`, `created_at`) VALUES
(1, 2, 'Part-Time Barista', 'CBA CAFE', 'Looking for friendly barista for weekend shifts.', 'Manage daily operations and ensure customer satisfaction.', 'Minimum SPM. Friendly and willing to learn.', 'Staff meals provided.', 'RM10/hour', 'Part-Time', 'Entry Level', 'Melaka', 'Food & Beverage', 1, '2025-11-04 00:32:05'),
(2, 2, 'Cashier Assistant', 'CBA CAFE', 'Assist with cashiering and customer service.', 'Manage daily operations and ensure customer satisfaction.', 'Minimum SPM. Friendly and willing to learn.', 'Staff meals provided.', 'RM9/hour', 'Part-Time', 'Entry Level', 'Melaka', 'Food & Beverage', 0, '2025-11-04 00:32:05'),
(3, 2, 'Senior Manager, Peop', 'Chin Hin Group ', 'Lead the strategic planning and implementation of HR technology solutions aligned with business objectives and overall HR strategy.', '• Lead HR technology strategy and ensure alignment with business goals.\n• Manage full lifecycle of HRMS platforms including assessment, configuration, and deployment.\n• Drive adoption of HR technology systems to enhance HR service delivery.\n• Oversee integration with other business systems and monitor performance.\n• Establish governance and ensure compliance with PDPA and labour laws.\n• Provide leadership and mentoring to HR technology teams.', '• Degree in Human Resources, IT, or Business Administration.\n• 8+ years experience in HR technology or HRIS management.\n• Strong knowledge of HR processes, data analytics, and reporting tools.\n• Proven project management and leadership skills.\n• Experience with SAP SuccessFactors, Workday, Oracle HCM, or similar systems.', '• Medical, Dental & Insurance Coverage.\n• Employee Training & Development Programs.\n• Modern Office Environment.\n• Shuttle Van Service.\n• Employee Wellness Activities.', 'Negotiable', 'Full-Time', '8+ years experience', 'Kuala Lumpur', 'Human Resources', 0, '2025-11-04 00:47:42'),
(4, 2, 'Senior Manager, Peop', 'Chin Hin Group ', 'Lead the strategic planning and implementation of HR technology solutions aligned with business objectives and overall HR strategy.', '• Lead HR technology strategy and ensure alignment with business goals.\n• Manage full lifecycle of HRMS platforms including assessment, configuration, and deployment.\n• Drive adoption of HR technology systems to enhance HR service delivery.\n• Oversee integration with other business systems and monitor performance.\n• Establish governance and ensure compliance with PDPA and labour laws.\n• Provide leadership and mentoring to HR technology teams.', '• Degree in Human Resources, IT, or Business Administration.\n• 8+ years experience in HR technology or HRIS management.\n• Strong knowledge of HR processes, data analytics, and reporting tools.\n• Proven project management and leadership skills.\n• Experience with SAP SuccessFactors, Workday, Oracle HCM, or similar systems.', '• Medical, Dental & Insurance Coverage.\n• Employee Training & Development Programs.\n• Modern Office Environment.\n• Shuttle Van Service.\n• Employee Wellness Activities.', 'Negotiable', 'Full-Time', '8+ years experience', 'Kuala Lumpur', 'Human Resources', 0, '2025-11-04 00:49:03'),
(5, 2, 'Part-Time Barista', 'ABC Cafe', 'Looking for a friendly and energetic barista for weekend shifts at a busy café in Melaka.', '• Prepare and serve coffee and beverages.\n• Handle cash register and maintain cleanliness.\n• Provide excellent customer service.\n• Work with team to ensure smooth café operation.', '• Minimum SPM.\n• Experience in food & beverage industry preferred.\n• Good communication and teamwork skills.', '• Free drinks and meals during shift.\n• Staff discount on products.\n• Flexible working hours.', 'RM10/hour', 'Part-Time', '1 year experience', 'Melaka', 'Food & Beverage', 1, '2025-11-04 00:49:03'),
(6, 2, 'Cashier Assistant', 'ABC Mart', 'Assist customers with billing, handle cash transactions, and maintain checkout counters efficiently.', '• Manage POS system and handle cash securely.\n• Assist customers and resolve inquiries.\n• Keep cashier area clean and organized.\n• Support store operations when required.', '• Minimum SPM or equivalent.\n• Basic math and customer service skills.\n• Prior retail experience is an advantage.', '• Attendance bonuses.\n• Uniform provided.\n• Opportunities for promotion.', 'RM9/hour', 'Part-Time', '0–2 years experience', 'Melaka', 'Retail', 1, '2025-11-04 00:49:03'),
(7, 2, 'Graphic Designer Int', 'Creative Hub St', 'Assist in designing marketing materials and social media content for clients and in-house projects.', '• Create posters, brochures, and digital assets.\n• Collaborate with marketing team on design concepts.\n• Support branding and visual design projects.', '• Diploma or Degree in Graphic Design or related field.\n• Proficient in Adobe Photoshop, Illustrator, and Canva.\n• Creative and detail-oriented.', '• Internship certificate upon completion.\n• Mentorship and career guidance.\n• Exposure to real-world design projects.', 'Allowance RM600/mont', 'Internship', 'Student or Fresh Graduate', 'Melaka', 'Creative & Design', 1, '2025-11-04 00:49:03'),
(8, 2, 'Delivery Rider', 'QuickDeliver Sd', 'Responsible for delivering parcels and food orders within Melaka area safely and efficiently.', '• Deliver orders on time and handle items carefully.\n• Communicate with dispatch and customers.\n• Maintain vehicle and delivery equipment.', '• Possess a valid motorcycle license (Class B2).\n• Must own a smartphone with GPS.\n• Punctual, responsible, and courteous.', '• Fuel allowance and performance incentives.\n• Insurance coverage.\n• Flexible working schedule.', 'RM1,800–RM2,800/mont', 'Full-Time', '1–3 years experience', 'Melaka', 'Logistics', 1, '2025-11-04 00:49:03'),
(9, 2, 'crew management', 'abc123', 'be a good crew', 'yes', 'SPM | STPM | PHD', 'FREE MINYAK CAR', '10000', 'Full time', '5 years', 'melaka', 'barista', 0, '2025-11-11 02:05:19'),
(10, 2, 'chashier', 'abc cafe', 'be a cashier', 'yes', 'SPM | STPM| DEGREE| PHD', 'free allowance', '4000', 'full time', 'minimun 1 year', 'malaka', 'barista', 0, '2025-11-11 15:08:07'),
(11, 2, 'cashier', 'abc cafe', 'be a graeat crww', 'no', 'no', 'no', '5000', 'part time', 'no', 'melaka', 'barista', 0, '2025-11-11 15:09:10'),
(13, 12, 'F&B Supervisor', 'HSR COMPANNY', '? versee daily restaurant operations, ensuring high standards of customer service and food quality. \n', '? anage and train front-of-house staff.\n? Handle customer complaints and ensure satisfaction.\n? Monitor inventory and manage daily sales reports.\n', '', '? erformance-based bonus.\n? Annual leave and medical coverage.\n', 'RM2,500-RM3,500/mont', 'Full-Time', '3-5 years experience', 'Melaka', 'Food & Beverage', 0, '2025-11-21 14:47:30'),
(14, 13, 'Part-Time Barista', 'Alpha Food Sdn ', 'Weekend barista to prepare beverages and serve customers.', 'Prepare drinks; manage POS; maintain cleanliness.', 'Minimum SPM; barista experience preferred.', 'Staff meal; staff discount', 'RM10/hour', 'Part-Time', '0-2 years', 'Kuala Lumpur', 'Food & Beverage', 0, '2025-11-24 21:47:07'),
(15, 13, 'Full-Time Waiter/Wai', 'Alpha Food Sdn ', 'Front-of-house to serve guests and take orders.', 'Serve customers; maintain tables; assist POS.', 'Minimum SPM; customer service skills.', 'Service tips; annual leave', 'RM1,800/month', 'Full-Time', '1 year', 'Kuala Lumpur', 'Food & Beverage', 0, '2025-11-24 21:47:07'),
(16, 13, 'Kitchen Helper', 'Alpha Food Sdn ', 'Assist kitchen team with food prep and cleaning.', 'Food prep; dishwashing; stock checks.', 'Able to work in a fast-paced kitchen.', 'Meal during shift', 'RM1,600/month', 'Full-Time', '0-1 years', 'Kuala Lumpur', 'Food & Beverage', 1, '2025-11-24 21:47:07'),
(17, 13, 'Shift Supervisor', 'Alpha Food Sdn ', 'Oversee shift operations and staff performance.', 'Manage shift; handle enquiries; ensure SOPs.', '2+ years F&B experience.', 'Medical coverage; incentives', 'RM2,200/month', 'Full-Time', '2-4 years', 'Kuala Lumpur', 'Food & Beverage', 1, '2025-11-24 21:47:07'),
(18, 13, 'Delivery Rider', 'Alpha Food Sdn ', 'Deliver food orders within city area.', 'Deliver orders; maintain vehicle; update dispatch.', 'Motorcycle license; smartphone.', 'Fuel allowance', 'RM1,800–RM2,500/mont', 'Full-Time', '0-2 years', 'Kuala Lumpur', 'Logistics', 1, '2025-11-24 21:47:07'),
(19, 13, 'Graphic Designer (Pa', 'Alpha Food Sdn ', 'Design posters and social content for outlets.', 'Create digital assets; support marketing.', 'Diploma/degree or portfolio.', 'Internship certificate/Allowance', 'RM700/month', 'Part-Time', 'Student/Fresh Graduate', 'Kuala Lumpur', 'Creative', 1, '2025-11-24 21:47:07'),
(20, 14, 'Delivery Rider', 'Beta Logistics ', 'Deliver parcels within assigned zones.', 'Timely deliveries; customer contact; vehicle care.', 'B2 license; smartphone', 'Fuel allowance', 'RM1,800-RM2,500/month', 'Full-Time', '0-2 years', 'Johor', 'Logistics', 1, '2025-11-24 21:47:07'),
(21, 14, 'Warehouse Assistant', 'Beta Logistics ', 'Assist with sorting and packing parcels.', 'Sort packages; load/unload; stock counts.', 'Able to lift 20kg', 'Overtime allowance', 'RM1,600/month', 'Full-Time', '0-1 years', 'Johor', 'Warehouse', 1, '2025-11-24 21:47:07'),
(22, 14, 'Customer Service (Ca', 'Beta Logistics ', 'Handle shipment enquiries and tracking.', 'Respond to calls; update tracking; resolve issues.', 'Good communication skills', 'Performance bonus', 'RM1,700/month', 'Full-Time', '1 year', 'Johor', 'Customer Service', 1, '2025-11-24 21:47:07'),
(23, 14, 'Fleet Coordinator', 'Beta Logistics ', 'Coordinate drivers and schedules.', 'Route planning; dispatch; monitor KPIs.', 'Organisational skills', 'Medical coverage', 'RM2,200/month', 'Full-Time', '2-4 years', 'Johor', 'Logistics', 1, '2025-11-24 21:47:07'),
(24, 14, 'Admin Assistant', 'Beta Logistics ', 'Support operations admin and documentation.', 'Data entry; paperwork; liaise with clients.', 'SPM; basic MS Office', 'Annual leave', 'RM1,500/month', 'Full-Time', '0-2 years', 'Johor', 'Administration', 1, '2025-11-24 21:47:07'),
(25, 14, 'Part-Time Sorter', 'Beta Logistics ', 'Assist sorting during peak hours.', 'Sort parcels; label and prepare for dispatch.', 'No experience required', 'Shift allowance', 'RM8-10/hour', 'Part-Time', 'Student/Fresh Graduate', 'Johor', 'Warehouse', 1, '2025-11-24 21:47:07'),
(26, 15, 'Cashier', 'Gamma Retail Sd', 'Operate POS and assist customers at store.', 'Process payments; stock shelves; customer service.', 'Minimum SPM; cash handling', 'Staff discount', 'RM1,600-RM2,000', 'Full-Time', '0-2 years', 'Penang', 'Retail', 0, '2025-11-24 21:47:07'),
(27, 15, 'Store Assistant', 'Gamma Retail Sd', 'Merchandising and store upkeep.', 'Stocking; displays; assist customers.', 'Good team player', 'Training provided', 'RM1,500/month', 'Full-Time', '0-1 years', 'Penang', 'Retail', 1, '2025-11-24 21:47:07'),
(28, 15, 'Supervisor', 'Gamma Retail Sd', 'Manage store operations and staff.', 'Daily ops; handle escalations; inventory.', '1-2 years retail experience', 'Incentives', 'RM2,200/month', 'Full-Time', '1-3 years', 'Penang', 'Retail', 1, '2025-11-24 21:47:07'),
(29, 15, 'Visual Merchandiser', 'Gamma Retail Sd', 'Create appealing in-store displays.', 'Plan displays; implement promotions.', 'Creative skills', 'Portfolio-based', 'RM1,800/month', 'Full-Time', '1 year', 'Penang', 'Creative', 1, '2025-11-24 21:47:07'),
(30, 15, 'Part-Time Cleaner', 'Gamma Retail Sd', 'Maintain store cleanliness during hours.', 'Cleaning; minor maintenance', 'Reliable', 'Shift allowance', 'RM9–RM12/hour', 'Part-Time', 'No experience', 'Penang', 'Maintenance', 1, '2025-11-24 21:47:07'),
(31, 15, 'Stock Controller', 'Gamma Retail Sd', 'Manage incoming/outgoing stock.', 'Stock checks; reconcile returns.', 'Basic inventory knowledge', 'Overtime pay', 'RM1,700/month', 'Full-Time', '1 year', 'Penang', 'Logistics', 1, '2025-11-24 21:47:07'),
(32, 16, 'Junior Software Engi', 'Delta Technolog', 'Develop and maintain internal applications.', 'Code; debug; write unit tests.', 'Degree in CS or related', 'Medical; training', 'RM3,000–RM4,500/mont', 'Full-Time', '0-2 years', 'Kuala Lumpur', 'IT', 1, '2025-11-24 21:47:07'),
(33, 16, 'QA Tester', 'Delta Technolog', 'Test features and report bugs.', 'Create test cases; execute tests.', 'Attention to detail', 'Flexi hours', 'RM2,500/month', 'Full-Time', '0-2 years', 'Kuala Lumpur', 'IT', 1, '2025-11-24 21:47:07'),
(34, 16, 'DevOps Engineer', 'Delta Technolog', 'Manage CI/CD and deployments.', 'Maintain pipelines; support infra.', 'Linux; cloud basics', 'Cloud training', 'RM4,000-RM6,000/Month', 'Full-Time', '2-4 years', 'Kuala Lumpur', 'IT', 1, '2025-11-24 21:47:07'),
(35, 16, 'Technical Support', 'Delta Technolog', 'Support customers with product issues.', 'Troubleshoot; escalate; document.', 'Good communication', 'Shift allowance', 'RM2,200/month', 'Full-Time', '0-2 years', 'Kuala Lumpur', 'Customer Service', 1, '2025-11-24 21:47:07'),
(36, 16, 'UI/UX Designer', 'Delta Technolog', 'Design user interfaces and prototypes.', 'Wireframes; mockups; user tests.', 'Portfolio required', 'Remote flexibility', 'RM3,200/month', 'Full-Time', '1-3 years', 'Kuala Lumpur', 'Design', 1, '2025-11-24 21:47:07'),
(37, 16, 'Intern (Software)', 'Delta Technolog', 'Assist dev team and learn practices.', 'Pair programming; simple tasks.', 'Student or fresh grad', 'Stipend', 'RM800/month', 'Internship', 'Student', 'Kuala Lumpur', 'IT', 1, '2025-11-24 21:47:07'),
(38, 17, 'F&B Supervisor', 'Epsilon Hospita', 'Oversee daily restaurant operations.', 'Manage staff; ensure service standards.', '3+ years F&B', 'Medical; annual leave', 'RM2,500–RM3,500/mont', 'Full-Time', '3-5 years', 'Malacca', 'Food & Beverage', 1, '2025-11-24 21:47:07'),
(39, 17, 'Receptionist', 'Epsilon Hospita', 'Guest check-in and inquiries.', 'Check-in; phone; bookings.', 'Good communication', 'Staff discounts', 'RM1,600/month', 'Full-Time', '0-2 years', 'Malacca', 'Hospitality', 1, '2025-11-24 21:47:07'),
(40, 17, 'Housekeeping Attenda', 'Epsilon Hospita', 'Clean rooms and public areas.', 'Room cleaning; laundry support.', 'Attention to detail', 'Shift allowance', 'RM1,400/month', 'Full-Time', '0-1 years', 'Malacca', 'Hospitality', 1, '2025-11-24 21:47:07'),
(41, 17, 'Sous Chef', 'Epsilon Hospita', 'Assist head chef with kitchen management.', 'Menu prep; supervise cooks.', 'Culinary qualification', 'Meals provided', 'RM3,000–RM4,200/mont', 'Full-Time', '2-4 years', 'Malacca', 'Food & Beverage', 1, '2025-11-24 21:47:07'),
(42, 17, 'Part-Time Waiter', 'Epsilon Hospita', 'Serve in dining area for peak shifts.', 'Take orders; serve; clear tables.', 'Friendly and punctual', 'Tips', 'RM9–RM12/hour', 'Part-Time', 'No experience', 'Malacca', 'Food & Beverage', 1, '2025-11-24 21:47:07'),
(43, 17, 'Kitchen Helper (Nigh', 'Epsilon Hospita', 'Support kitchen during night shift.', 'Dishwashing; prep; clean.', 'Able to work nights', 'Night allowance', 'RM1,600/month', 'Full-Time', '0-1 years', 'Malacca', 'Food & Beverage', 1, '2025-11-24 21:47:07'),
(44, 18, 'Production Operator', 'Zeta Manufactur', 'Operate production line and maintain quality.', 'Operate machines; QC; packing.', 'Able to work shifts', 'Overtime pay', 'RM1,600/month', 'Full-Time', '0-2 years', 'Negeri Sembilan', 'Manufacturing', 1, '2025-11-24 21:47:07'),
(45, 18, 'Maintenance Technici', 'Zeta Manufactur', 'Maintain plant equipment.', 'Troubleshoot; routine checks.', 'Diploma in mechanical/electrical', 'Medical', 'RM2,200/month', 'Full-Time', '1-3 years', 'Negeri Sembilan', 'Maintenance', 1, '2025-11-24 21:47:07'),
(46, 18, 'Warehouse Clerk', 'Zeta Manufactur', 'Manage inventory and dispatch.', 'Stock records; pick & pack.', 'Basic computer skills', 'Transport allowance', 'RM1,600/month', 'Full-Time', '0-2 years', 'Negeri Sembilan', 'Logistics', 1, '2025-11-24 21:47:07'),
(47, 18, 'Quality Inspector', 'Zeta Manufactur', 'Inspect finished goods and report.', 'Sampling; QC documentation.', 'Attention to detail', 'Training provided', 'RM1,800/month', 'Full-Time', '1-2 years', 'Negeri Sembilan', 'Quality', 1, '2025-11-24 21:47:07'),
(48, 18, 'Forklift Driver', 'Zeta Manufactur', 'Operate forklift in warehouse.', 'Load/unload; move pallets.', 'Forklift license preferred', 'Shift allowance', 'RM1,800–RM2,200/mont', 'Full-Time', '1 year', 'Negeri Sembilan', 'Logistics', 1, '2025-11-24 21:47:07'),
(49, 18, 'Admin Assistant', 'Zeta Manufactur', 'Support HR and admin tasks.', 'Data entry; coordination.', 'SPM; MS Office', 'Annual leave', 'RM1,500/month', 'Full-Time', '0-1 years', 'Negeri Sembilan', 'Administration', 1, '2025-11-24 21:47:07'),
(50, 19, 'Tuition Teacher (Mat', 'Eta Education S', 'Teach secondary school math classes.', 'Plan lessons; assess students.', 'Degree or diploma in relevant subject', 'Flexible hours', 'RM40–RM80/hour', 'Part-Time', '1 year', 'Selangor', 'Education', 1, '2025-11-24 21:47:07'),
(51, 19, 'Admin Officer', 'Eta Education S', 'Handle student registrations and schedules.', 'Record keeping; enquiries.', 'SPM; admin skills', 'Training', 'RM1,600/month', 'Full-Time', '0-1 years', 'Selangor', 'Administration', 1, '2025-11-24 21:47:07'),
(52, 19, 'Marketing Executive', 'Eta Education S', 'Promote courses and manage social media.', 'Content creation; campaigns.', 'Marketing knowledge', 'Commission on enrolments', 'RM1,800/month', 'Full-Time', '1 year', 'Selangor', 'Marketing', 1, '2025-11-24 21:47:07'),
(53, 19, 'Part-Time English Tu', 'Eta Education S', 'Teach conversational English to students.', 'Lesson prep; deliver classes.', 'Good English proficiency', 'Hourly pay', 'RM30–RM60/hour', 'Part-Time', 'No experience', 'Selangor', 'Education', 1, '2025-11-24 21:47:07'),
(54, 19, 'IT Support (Part-Tim', 'Eta Education S', 'Support IT for classes and admin.', 'Troubleshoot; maintain lab.', 'Basic IT skills', 'Stipend', 'RM800/month', 'Part-Time', 'Student/Fresh Graduate', 'Selangor', 'IT', 1, '2025-11-24 21:47:07'),
(55, 19, 'Centre Manager', 'Eta Education S', 'Manage centre operations and staff.', 'Oversee operations; hiring.', '2+ years management', 'Performance bonus', 'RM3,000/month', 'Full-Time', '2-4 years', 'Selangor', 'Management', 1, '2025-11-24 21:47:07'),
(56, 20, 'General Helper', 'Theta Services ', 'Assist with general maintenance tasks.', 'Cleaning; minor repairs; support teams.', 'Reliable and hardworking', 'Shift allowance', 'RM1,400/month', 'Full-Time', 'No experience', 'Perak', 'Maintenance', 1, '2025-11-24 21:47:07'),
(57, 20, 'Customer Service (On', 'Theta Services ', 'Frontline customer support at client sites.', 'Assist clients; handle enquiries.', 'Good people skills', 'Travel allowance', 'RM1,500/month', 'Full-Time', '0-1 years', 'Perak', 'Customer Service', 1, '2025-11-24 21:47:07'),
(58, 20, 'Electrician Technici', 'Theta Services ', 'Perform electrical troubleshooting and repairs.', 'Fix electrical faults; preventive maintenance.', 'Trade certificate preferred', 'Tool allowance', 'RM2,200/month', 'Full-Time', '1-3 years', 'Perak', 'Trades', 1, '2025-11-24 21:47:07'),
(59, 20, 'Plumber', 'Theta Services ', 'Handle plumbing tasks and maintenance.', 'Repair leaks; install fixtures.', 'Plumbing experience', 'Overtime', 'RM1,900/month', 'Full-Time', '1-3 years', 'Perak', 'Trades', 0, '2025-11-24 21:47:07'),
(60, 20, 'Account Assistant', 'Theta Services ', 'Handle invoicing and basic accounts.', 'Prepare invoices; petty cash.', 'SPM; basic accounting', 'Annual leave', 'RM1,600/month', 'Full-Time', '0-2 years', 'Perak', 'Administration', 1, '2025-11-24 21:47:07'),
(64, 16, 'Senior Barista', 'Delta Technolog', '? We are looking for a friendly and energetic Barista to join our team.\n? You will be the face of our cafe, serving premium coffee and pastries.\n? Experience with espresso machines is a plus but not required.\n? Must be willing to work weekends and public holidays.\n', '? Prepare and serve high-quality coffee, tea, and other beverages while keeping the vibes immaculate. Keep the bar area, equipment, and seating zones clean and sanitized-nobody likes a messy station. Handle the register, process payments, and manage cash flow accurately. Monitor inventory for beans, milk, and pastries, and let the manager know before we run out of the good stuff. Mentor and train junior staff (since you\'re the Senior here) on brewing techniques and customer service. Open or close the cafe, ensuring everything is secure and ready for the next shift. 0\n', '? At least 2 to 3 years of experience as a barista, preferably in a fast-paced or specialty coffee environment. 0 Deep knowledge of espresso extraction, milk texturing, and latte art-we need someone who actually knows their way around a machine. 0 Proven experience leading a small team or mentoring juniors; you\'re the one they\'ll look to when things get hectic. 0 Solid communication skills and the ability to handle a \"Karen\" situation without breaking a sweat. 0 Strong organizational skills to keep the workflow moving and the inventory tight. 0 Basic math skills for the register and a sharp eye for detail.0\n? Deep knowledge of espresso extraction, milk texturing, and latte art-we need someone who actually knows their way around a machine. 0\n? Proven experience leading a small team or mentoring juniors; you\'re the one they\'ll look to when things get hectic. 0\n? Solid communication skills and the ability to handle a \"Karen\" situation without breaking a sweat. 0\n? Strong organizational skills to keep the workflow moving and the inventory tight. 0 Basic math skills for the register and a sharp eye for detail.\n', '? Free coffee and snacks during your shift-staying caffeinated is on us. 0 Competitive hourly pay plus a fair share of the tip pool. 0\n? A chill work environment where we actually care about the vibes and your growth. 0\n? Employee discounts on beans and merch so you can flex at home. 0\n? Flexible scheduling that respects your life outside the cafe (within reason, since we need those weekend warriors). 0\n? 0 Opportunities for professional development, like advanced cupping sessions or latte art throwdowns. 0\n', 'RM 2,500 - 2,800 /Month', 'Full-Time', '2 - 5 Years', 'Melaka', 'Food & Beverage (F&B)', 1, '2025-12-26 15:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `job_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`job_id`, `skill_id`) VALUES
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(14, 4),
(14, 10),
(15, 1),
(15, 4),
(16, 5),
(16, 10),
(17, 5),
(17, 6),
(18, 6),
(18, 7),
(20, 7),
(20, 9),
(22, 1),
(22, 4),
(26, 1),
(26, 4),
(32, 6),
(32, 12),
(38, 5),
(38, 6),
(41, 10),
(41, 18),
(44, 5),
(44, 7),
(50, 4),
(50, 14),
(55, 6),
(55, 7),
(58, 6),
(58, 15);

-- --------------------------------------------------------

--
-- Table structure for table `seeker_education`
--

CREATE TABLE `seeker_education` (
  `edu_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `institution_name` varchar(50) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `field_of_study` varchar(100) DEFAULT NULL,
  `start_year` year(4) DEFAULT NULL,
  `end_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seeker_education`
--

INSERT INTO `seeker_education` (`edu_id`, `seeker_id`, `institution_name`, `qualification`, `field_of_study`, `start_year`, `end_year`) VALUES
(2, 4, 'SMK Tun Haji Bujang', 'SPM', 'Commerce', '2018', '2022'),
(3, 5, 'Universiti Teknologi Malaysia', 'Bachelor Degree', 'Computer Science', '2020', '2024'),
(4, 6, 'Kolej Komuniti Johor', 'Diploma', 'Business Administration', '2019', '2021'),
(5, 21, 'SMK Seri Melaka', 'SPM', 'Science', '2019', '2023'),
(6, 22, 'Taylor\'s University', 'Bachelor Degree', 'Marketing', '2020', '2024'),
(7, 23, 'Politeknik Port Dickson', 'Diploma', 'Logistics Management', '2018', '2021'),
(8, 24, 'SMK Dato\' Abdul Rahman', 'SPM', 'Arts', '2017', '2021'),
(9, 25, 'Kolej Yayasan Melaka', 'Diploma', 'Culinary Arts', '2019', '2022'),
(10, 26, 'SMK Tun Fatimah', 'SPM', 'Commerce', '2018', '2022'),
(11, 27, 'Institut Kemahiran MARA', 'Certificate', 'Electrical Technology', '2017', '2019'),
(12, 28, 'Universiti Malaya', 'Bachelor Degree', 'Psychology', '2021', '2025'),
(13, 29, 'SMK Sultan Abdul Halim', 'SPM', 'Technical', '2016', '2020'),
(14, 30, 'Kolej Komuniti Selangor', 'Diploma', 'Retail Management', '2020', '2023'),
(15, 2, 'Universiti Malaya', 'Bachelor Degree', 'Computer Science', '2023', '2027'),
(16, 2, 'Universiti Malaya', 'Degree', 'Computer Science', '2024', '2028'),
(19, 2, 'Universiti Malaya', 'Diploma', 'Computer Science', '2024', '2027');

-- --------------------------------------------------------

--
-- Table structure for table `seeker_language`
--

CREATE TABLE `seeker_language` (
  `lang_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `language_name` varchar(10) DEFAULT NULL,
  `proficiency` enum('Basic','Intermediate','Advanced','Fluent','Native') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seeker_language`
--

INSERT INTO `seeker_language` (`lang_id`, `seeker_id`, `language_name`, `proficiency`) VALUES
(3, 4, 'Malay', 'Native'),
(4, 4, 'English', 'Intermediate'),
(5, 5, 'Malay', 'Fluent'),
(6, 5, 'English', 'Advanced'),
(7, 5, 'Mandarin', 'Basic'),
(8, 6, 'Malay', 'Fluent'),
(9, 6, 'English', 'Intermediate'),
(10, 21, 'Malay', 'Fluent'),
(11, 21, 'English', 'Intermediate'),
(12, 22, 'Malay', 'Fluent'),
(13, 22, 'English', 'Advanced'),
(14, 22, 'Korean', 'Basic'),
(15, 23, 'Malay', 'Fluent'),
(16, 23, 'English', 'Intermediate'),
(17, 24, 'Malay', 'Fluent'),
(18, 24, 'English', 'Basic'),
(19, 25, 'Malay', 'Fluent'),
(20, 25, 'English', 'Intermediate'),
(21, 26, 'Malay', 'Fluent'),
(22, 26, 'English', 'Intermediate'),
(23, 27, 'Malay', 'Fluent'),
(24, 27, 'English', 'Basic'),
(25, 28, 'Malay', 'Fluent'),
(26, 28, 'English', 'Advanced'),
(27, 29, 'Malay', 'Fluent'),
(28, 29, 'English', 'Intermediate'),
(29, 30, 'Malay', 'Fluent'),
(30, 30, 'English', 'Intermediate'),
(34, 4, 'Chinese', 'Advanced'),
(40, 4, 'Italic', 'Basic'),
(41, 4, 'France', 'Fluent'),
(42, 4, 'German', 'Intermediate');

-- --------------------------------------------------------

--
-- Table structure for table `seeker_license`
--

CREATE TABLE `seeker_license` (
  `license_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `license_name` varchar(100) DEFAULT NULL,
  `issued_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seeker_license`
--

INSERT INTO `seeker_license` (`license_id`, `seeker_id`, `license_name`, `issued_by`, `issue_date`, `expiry_date`) VALUES
(2, 4, 'Customer Service Training', 'HRDF Malaysia', '2023-09-15', '2099-12-31'),
(3, 5, 'Food Handler Certificate', 'MOH Malaysia', '2024-01-15', '2026-01-15'),
(4, 6, 'First Aid Certificate', 'St. John Ambulance', '2023-08-20', '2025-08-20'),
(5, 21, 'Barista Training Certificate', 'Coffee Association Malaysia', '2024-02-10', '2099-12-31'),
(6, 22, 'Digital Marketing Certification', 'Google', '2023-11-05', '2099-12-31'),
(7, 23, 'Forklift Operator License', 'DOSH Malaysia', '2022-05-15', '2025-05-15'),
(8, 24, 'Customer Service Excellence', 'HRDF Malaysia', '2023-03-22', '2099-12-31'),
(9, 25, 'Food Safety Supervisor', 'MOH Malaysia', '2022-09-30', '2024-09-30'),
(10, 27, 'Electrician License', 'Suruhanjaya Tenaga', '2019-07-12', '2024-07-12'),
(11, 28, 'TESOL Certificate', 'International TEFL Academy', '2023-06-18', '2099-12-31'),
(12, 29, 'Security Guard License', 'KDN Malaysia', '2021-04-05', '2024-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_name`) VALUES
(2, 'Cash Handling'),
(3, 'Coffee Making'),
(4, 'Communication'),
(1, 'Customer Service'),
(11, 'Digital Marketing'),
(15, 'Electrical Repair'),
(9, 'Food Preparation'),
(10, 'Inventory Management'),
(17, 'learning'),
(8, 'Microsoft Office'),
(16, 'Plumbing'),
(6, 'Problem Solving'),
(13, 'Quality Control'),
(18, 'self learning'),
(14, 'teaching'),
(5, 'Teamwork'),
(7, 'Time Management'),
(12, 'Web Development'),
(19, 'willing to learning');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` enum('seeker','employer','admin') DEFAULT 'seeker',
  `location` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `personal_summary` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `email`, `role`, `location`, `phone`, `personal_summary`, `created_at`) VALUES
(2, 'abc_cafe', 'abc123', 'CBA CAFE', 'hr@abccafe.com', 'employer', 'Melaka', '01111111111', 'no', '2025-11-04 00:32:05'),
(3, 'admin_user', 'admn123', 'System Admin', 'admin@streetjobrecruit.com', 'admin', 'Malaysia', '012-0000000', 'New user profile.', '2025-11-04 00:32:05'),
(4, 'siti_freelancer', 'siti123', 'Siti Nur', 'siti@gmail.com', 'seeker', 'Melaka', '0132222222', 'Freelancer with experience in customer service and cashiering.', '2025-11-04 00:32:05'),
(5, 'abu', 'abu123', 'abu bin ali', '', 'seeker', 'johor', '012394949', 'have wasup guys', '2025-11-10 23:06:42'),
(6, 'abang', 'abang123', 'muhammasd abang', 'abang@gmail.com', 'seeker', 'johor', '012345678', 'no', '2025-11-11 01:24:44'),
(7, 'lzj', 'lzj123', 'lim zi jia', 'lzj123@gmail.com', 'seeker', 'pulau pina', '012345745', 'love badminton', '2025-11-20 13:30:06'),
(8, 'adam', 'adam123', 'adam ali', NULL, 'seeker', 'Malaysia', '012-0000000', 'New user profile.', '2025-11-20 13:52:00'),
(9, 'admin1', 'adm1123', 'wai kai yang', NULL, 'admin', 'Malaysia', '012-0000000', 'New user profile.', '2025-11-20 13:55:44'),
(10, 'admin', 'admin123', 'admin1', NULL, 'admin', 'Malaysia', '012-0000000', 'New user profile.', '2025-11-21 13:34:15'),
(12, 'EMPLOYER2', 'emp2123', 'HSR COMPANNY', 'hr@hsrfood.com.my', 'employer', 'Melaka Ray', '+606-288 7700', 'HSR COMPANNY is a fast-growing food and beverage group specializing in modern Malaysian street food concepts. We manage a chain of successful, high-volume casual dining outlets across the southern region of Peninsular Malaysia, with a focus on quality, speed, and exceptional customer service.', '2025-11-21 13:42:12'),
(13, 'hr_alpha', 'alph123', 'Alpha Food Sdn Bhd', 'hr@alphafood.com', 'employer', 'Kuala Lump', '012-8000001', 'Alpha Food - casual dining chain.', '2025-11-24 21:47:07'),
(14, 'hr_beta', 'beta123', 'Beta Logistics Sdn Bhd', 'hr@betalogistics.com', 'employer', 'Johor', '012-8000002', 'Beta Logistics - delivery & courier services.', '2025-11-24 21:47:07'),
(15, 'hr_gamma', 'gama123', 'Gamma Retail Sdn Bhd', 'hr@gammaretail.com', 'employer', 'Penang', '012-8000003', 'Gamma Retail - convenience stores.', '2025-11-24 21:47:07'),
(16, 'hr_delta', 'delt123', 'Delta Technologies Sdn Bhd', 'hr@deltatech.com', 'employer', 'Kuala Lump', '012-8000004', 'Delta Tech - IT & software services.\nsince 1999\n', '2025-11-24 21:47:07'),
(17, 'hr_epsilon', 'epsi123', 'Epsilon Hospitality Sdn Bhd', 'hr@epsilonhotel.com', 'employer', 'Malacca', '012-8000005', 'Epsilon Hospitality - hotels & F&B.', '2025-11-24 21:47:07'),
(18, 'hr_zeta', 'zeta123', 'Zeta Manufacturing Sdn Bhd', 'hr@zetamfg.com', 'employer', 'Negeri Sem', '012-8000006', 'Zeta Manufacturing - light manufacturing.', '2025-11-24 21:47:07'),
(19, 'hr_eta', 'eta123', 'Eta Education Sdn Bhd', 'hr@etaedu.com', 'employer', 'Selangor', '012-8000007', 'Eta Education - tuition & training centres.', '2025-11-24 21:47:07'),
(20, 'hr_theta', 'thet123', 'Theta Services Sdn Bhd', 'hr@thetaservices.com', 'employer', 'Perak', '012-8000008', 'Theta Services - general services and maintenance.', '2025-11-24 21:47:07'),
(21, 'Adam224', 'Adam123', 'Adam bin Hakim', 'adam01@example.com', 'seeker', 'Kuala Lump', '012-7000001', 'Actively seeking part-time job.', '2025-11-24 21:54:05'),
(22, 'bella667', 'bela123', 'Bella Tan', 'bella02@example.com', 'seeker', 'Selangor', '012-7000002', 'Fresh graduate looking for entry-level roles.', '2025-11-24 21:54:05'),
(23, 'chongw1', 'chng123', 'Chong Wei', 'chong03@example.com', 'seeker', 'Penang', '012-7000003', 'Experience in warehouse & delivery.', '2025-11-24 21:54:05'),
(24, 'darrenlim', 'darn123', 'Darren Lim', 'darren04@example.com', 'seeker', 'Johor', '012-7000004', 'Interested in admin and clerk jobs.', '2025-11-24 21:54:05'),
(25, 'EveOng', 'Eve123', 'Evelyn Ong', 'evelyn05@example.com', 'seeker', 'Malacca', '012-7000005', 'Looking for part-time F&B work.', '2025-11-24 21:54:05'),
(26, 'FahNur', 'Fah123', 'Farah Nur', 'farah06@example.com', 'seeker', 'Negeri Sem', '012-7000006', 'Open to customer service opportunities.', '2025-11-24 21:54:05'),
(27, 'GoMar', 'GoMar123', 'Gopal Kumar', 'gopal07@example.com', 'seeker', 'Perak', '012-7000007', 'Experienced technician seeking new role.', '2025-11-24 21:54:05'),
(28, 'Hannah', 'Han123', 'Hannah Lee', 'hannah08@example.com', 'seeker', 'Sarawak', '012-7000008', 'Part-time student seeking flexible jobs.', '2025-11-24 21:54:05'),
(29, 'Imranfa', 'Imrn123', 'Imran Fauzi', 'imran09@example.com', 'seeker', 'Sabah', '012-7000009', 'Looking for security & general work.', '2025-11-24 21:54:05'),
(30, 'minekho', 'mine123', 'Jasmine Kho', 'jasmine10@example.com', 'seeker', 'Kedah', '012-7000010', 'Seeking opportunities in retail.', '2025-11-24 21:54:05'),
(31, 'ilwen', 'ilwen123', 'ilie wen', 'iliewen90@gmail.com', 'seeker', 'johot', '01245689', 'love photographing', '2025-11-24 22:49:24'),
(32, 'mail', 'mail123', 'mail bin ilam', 'mail123@gmail.com', 'seeker', 'melaka', '0123456788', 'love playing game', '2025-12-04 11:54:12'),
(34, 'khiun', 'khiun123', 'kouy', 'khiun@gmail.com', 'seeker', 'terengganu', '01111018074', 'blowjob', '2025-12-08 22:59:14'),
(36, 'ali', 'ali123', 'ali bin pau', 'ali@gmail.com', 'seeker', 'Thailand', '0128599028', 'I love self learning', '2026-01-11 02:58:40'),
(38, 'weijia', 'weijia12', 'Tn Wei Jia', 'weijia0506@gmail.com', 'seeker', 'Johor', '01987234982', 'Love eating', '2026-01-11 22:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`user_id`, `skill_id`) VALUES
(4, 1),
(4, 2),
(5, 4),
(5, 5),
(5, 6),
(6, 1),
(6, 2),
(6, 7),
(21, 4),
(21, 7),
(21, 8),
(22, 4),
(22, 11),
(22, 12),
(23, 6),
(23, 7),
(23, 9),
(24, 1),
(24, 4),
(24, 7),
(25, 5),
(25, 7),
(25, 10),
(26, 1),
(26, 4),
(26, 7),
(27, 6),
(27, 7),
(27, 15),
(28, 4),
(28, 7),
(28, 14),
(29, 5),
(29, 6),
(29, 7),
(30, 1),
(30, 4),
(30, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `employer_id` (`employer_id`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`job_id`,`skill_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `seeker_education`
--
ALTER TABLE `seeker_education`
  ADD PRIMARY KEY (`edu_id`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `seeker_language`
--
ALTER TABLE `seeker_language`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `seeker_license`
--
ALTER TABLE `seeker_license`
  ADD PRIMARY KEY (`license_id`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD UNIQUE KEY `skill_name` (`skill_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`user_id`,`skill_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `seeker_education`
--
ALTER TABLE `seeker_education`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `seeker_language`
--
ALTER TABLE `seeker_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `seeker_license`
--
ALTER TABLE `seeker_license`
  MODIFY `license_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`seeker_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD CONSTRAINT `job_skills_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE;

--
-- Constraints for table `seeker_education`
--
ALTER TABLE `seeker_education`
  ADD CONSTRAINT `seeker_education_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `seeker_language`
--
ALTER TABLE `seeker_language`
  ADD CONSTRAINT `seeker_language_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `seeker_license`
--
ALTER TABLE `seeker_license`
  ADD CONSTRAINT `seeker_license_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
