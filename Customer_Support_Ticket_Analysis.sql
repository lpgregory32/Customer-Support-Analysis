Create database support_ticket_analysis;
use support_ticket_analysis;

CREATE TABLE channel_info (
ticket_channel VARCHAR(50),
channel_manager VARCHAR(50),
sla_hours INT
);

INSERT INTO channel_info (ticket_channel, channel_manager, sla_hours) VALUES
('Phone', 'Sarah Jenkins', 2),
('Email', 'Michael Chang', 24),
('Chat', 'Amanda Ross', 1),
('Walk-in', 'David Smith', 4);

-- This query is to see how many tickets we have in all
Select count(`ticket id`)
from customer_support_tickets;

-- Thid query is used to show us the first 10 tickets in the data set 
Select * from customer_support_tickets
limit 10;

-- This query is showing us how many tickets have each status;
Select `ticket status`, COUNT(*)
from customer_support_tickets
group by `Ticket Status`;

-- This query is showing us how many tickets have each priority level
Select `ticket priority`, COUNT(*)
from customer_support_tickets
group by `Ticket Priority`;

-- This query is showing us how many tickets came from each ticket channel
Select `ticket channel`, COUNT(*)
from customer_support_tickets
group by `Ticket Channel`;

-- This query is giving us the top 10 items purchased that have tickets put in for them
Select `product purchased`, COUNT(*) as Ticket_Count
from customer_support_tickets
group by `product purchased` 
order by Ticket_Count DESC
limit 10;

-- This query give us the average customer age
Select avg(`customer age`)
from customer_support_tickets;

-- This query gives us the count of tickets put in my each gender
Select `customer gender`, COUNT(*)
from customer_support_tickets
group by `Customer Gender`;

-- This query shows us the number of each ticket type
Select `ticket type`, COUNT(*)
from customer_support_tickets
group by `Ticket Type`;

-- This query gives us the average satisfaction rating of each ticket channel
Select `ticket channel`, 
avg(`customer satisfaction rating`) as AVG_Rating
from customer_support_tickets
group by `Ticket Channel`
order by AVG_Rating DESC;

-- This query is showing each ticket proiorty and ticket status combination and how many tickets are open
Select `ticket priority`, (`ticket status`), COUNT(*) as Ticket_Count
from customer_support_tickets
group by `ticket priority`, `ticket status`
order by `ticket priority`, Ticket_Count DESC;

-- This query joins ticket records with channel manager and SLA information 
SELECT t.`ticket id`, t.`ticket channel`, c.channel_manager, c.sla_hours
FROM customer_support_tickets t
INNER JOIN channel_info c
ON t.`ticket channel` = c.ticket_channel
LIMIT 10;

-- This case statement shows age groups and ticket counts from each age group
Select
Case
When `Customer Age` < 30 Then 'Under 30'
When `Customer Age` Between 30 and 50 then '30-50'
Else 'Over 50'
end as Age_Group,
COUNT(*) as Ticket_Count
from Customer_Support_tickets
group by Age_Group
Order by Ticket_Count DESC;