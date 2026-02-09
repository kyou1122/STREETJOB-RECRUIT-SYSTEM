StreetJobRecruit System 🚀

A comprehensive, console-based recruitment management information system built with C++ and MySQL. This project was developed as part of the Bengkel 1 curriculum to digitize the manual recruitment lifecycle for Administrators, Employers, and Job Seekers.

🛠 Tech Stack
Language: C++

Database: MySQL (Relational Database Management)

Connector: MySQL Connector/C++ 8.0

Environment: XAMPP / MySQL Localhost

✨ Key Features
Role-Based Access Control (RBAC): Secure login for Admins, Employers, and Seekers.

Standardized Data Entry: Integrated selection menus for locations (e.g., Melaka, Selangor) to ensure data consistency and prevent fragmentation.

ID Abstraction: Uses a mapping system to hide internal Database Primary Keys from the UI, providing a user-friendly index (1, 2, 3...) for record selection.

Analytical Reporting: Generates real-time market insights including total application counts and category-wise demand.

🛡 Robustness & Error Handling
Input Validation: Features a custom validation layer to prevent std::cin failure and infinite loops from invalid data types.

Database Integrity: Implements try-catch blocks for all SQL transactions to ensure the system handles database timeouts or foreign key violations gracefully.

Consistency: Standardized options for location data ensure that SQL GROUP BY and COUNT queries remain 100% accurate.

🚀 How to Run
Clone the Repo: git clone https://github.com/your-username/StreetJobRecruit-System.git

Database Setup: Import the provided .sql file into your local MySQL server (XAMPP).

Configure Connection: Update the driver->connect() parameters in the C++ source code with your local credentials.

Build & Run: Compile using your preferred C++ compiler (ensure MySQL Connector/C++ is linked).
