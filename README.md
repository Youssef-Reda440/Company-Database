# Company Database Management System

## Overview
This project represents a complete and well-structured **Company Database Management System** designed using SQL Server.
It models real-world company operations including employees, teams, projects, clients, contracts, and skills.

The database follows relational database best practices with clear entity relationships, constraints, and optimized views for reporting and analysis.

---

## Key Features
- Well-designed relational schema with primary and foreign keys
- Logical separation between core entities and subtypes
- Enforced data integrity using CHECK constraints and DEFAULT values
- Support for employees, freelancers, suppliers, and clients
- Project and contract management
- Skill tracking and task assignments
- Optimized SQL Views for common business use cases

---

## Database Structure
The database includes the following main entities:

- **Person** (Base entity for all people)
- **Employee**, **Freelancer**, **Supplier**, **Client**
- **Department** and **Team**
- **Project** and **Contract**
- **Task** and **Skill**
- Association tables for assignments and relationships

The design ensures scalability and consistency while remaining insertion-friendly.

---

## Implemented Views
The project includes several professional SQL Views to simplify data access:

- `vw_EmployeeProfile` – Employee details for HR and management
- `vw_TeamMembers` – Team composition (employees and freelancers)
- `vw_ProjectDashboard` – Project overview with manager and client details
- `vw_ProjectAssignments` – Project role assignments
- `vw_PersonSkills` – Skills and experience mapping

Each view is documented separately for clarity.

---

## Technologies Used
- SQL Server
- T-SQL
- GitHub for version control

---

## Use Cases
- Academic database projects
- Learning relational database design
- Practicing SQL constraints and views
- Backend database foundation for enterprise applications

---

## Project Status
✔ Database schema completed  
✔ Sample data inserted  
✔ Views implemented and documented  

The project is complete and ready for further extension or integration.

---

## Author
Developed as part of a database design and implementation project.
