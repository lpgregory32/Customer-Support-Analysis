# Customer Support Ticket Analysis

## Project Overview

This project analyzes a customer support ticket dataset using MySQL. The goal was to identify trends in ticket volume, customer demographics, support channels, ticket priorities, ticket types, and customer satisfaction ratings.

## Tools Used

- MySQL Workbench
- SQL
- GitHub

## Dataset

Customer Support Ticket Dataset containing 8,469 support tickets.

## SQL Concepts Demonstrated

- SELECT Statements
- Aggregate Functions (COUNT, AVG)
- GROUP BY
- ORDER BY
- CASE Statements
- INNER JOIN
- Data Filtering
- Table Creation
- Data Insertion

## Analysis Performed

- Total ticket volume analysis
- Ticket status distribution
- Ticket priority distribution
- Support channel analysis
- Product ticket frequency analysis
- Customer age analysis
- Customer gender analysis
- Customer satisfaction rating analysis
- Ticket priority and status combination analysis
- Inner join between support tickets and channel information tables

## Key Findings

### Ticket Volume
- Analyzed 8,469 customer support tickets.

### Ticket Status Distribution
- Pending Customer Response: 2,881 tickets
- Open: 2,819 tickets
- Closed: 2,769 tickets

Ticket statuses were distributed fairly evenly, with Pending Customer Response being the most common status.

### Ticket Priority Distribution
- Medium: 2,192 tickets
- Critical: 2,129 tickets
- High: 2,085 tickets
- Low: 2,063 tickets

Ticket priorities were nearly evenly distributed across all severity levels.

### Support Channel Usage
- Email: 2,143 tickets
- Phone: 2,132 tickets
- Social Media: 2,121 tickets
- Chat: 2,073 tickets

Customers used all support channels at similar rates, with Email generating the highest ticket volume.

### Top Products by Ticket Volume
1. Canon EOS - 240 tickets
2. GoPro Hero - 228 tickets
3. Nest Thermostat - 225 tickets
4. Philips Hue Lights - 221 tickets
5. Amazon Echo - 221 tickets

Camera and smart-home products generated the highest support ticket volumes.

### Customer Demographics
- Average Customer Age: 44.03 years

Age Group Distribution:
- Ages 30-50: 3,296 tickets
- Over 50: 3,245 tickets
- Under 30: 1,928 tickets

Customers between ages 30 and 50 generated the largest number of support tickets.

Gender Distribution:
- Male: 2,896
- Female: 2,887
- Other: 2,686

Customer demographics were relatively balanced across gender categories.

### Ticket Types
- Refund Request: 1,752 tickets
- Technical Issue: 1,747 tickets
- Cancellation Request: 1,695 tickets
- Product Inquiry: 1,641 tickets
- Billing Inquiry: 1,634 tickets

Refund requests and technical issues represented the most common ticket categories.

### Customer Satisfaction by Channel
- Chat: 1.002
- Email: 0.996
- Phone: 0.958
- Social Media: 0.958

Chat support achieved the highest average customer satisfaction rating.

### Priority and Status Analysis
The largest ticket category was Medium Priority / Open status with 771 tickets. Ticket volume was distributed relatively evenly across priority and status combinations.

### Relational Database Analysis
Created a custom channel information table and used an INNER JOIN to combine ticket records with channel manager and SLA information.

## Repository Contents

- customer_support_ticket_analysis.sql - SQL script containing all queries and table creation statements
- README.md - Project documentation and findings

## Author

Luke Gregory
