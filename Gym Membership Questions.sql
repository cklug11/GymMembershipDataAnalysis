-- GYM MEMBERSHIP DATA QUESTIONS

-- Q1: How many members visit the gym during the week?
SELECT COUNT(*) AS Total_Number_Of_Members
FROM membership;


-- Q2: What is the breakdown of gym visits by membership type during the week?
SELECT membership_type,COUNT(*) AS Amount
FROM membership
GROUP BY membership_type;


-- Q3:What is the breakdown of gym visits by gender during the week?
SELECT gender,COUNT(*) AS Amount
FROM membership
GROUP BY gender;


-- Q4: Does gender affect membership type selection?
SELECT gender,membership_type,COUNT(*) AS count
FROM membership
GROUP BY gender,membership_type
ORDER BY gender, count DESC;


-- Q5: What is the average age of gym members who visited during the week?
SELECT avg(age) as Average_Age
FROM membership;


-- Q6: What is the age distribution of gym members who visited during the week?
SELECT 
	CASE
		WHEN age>=10 AND age<=19 THEN '10-19'
        WHEN age>=20 AND age<=29 THEN '20-29'
        WHEN age>=30 AND age<=39 THEN '30-39'
        WHEN age>=40 AND age<=49 THEN '40-49'
        WHEN age>=50 AND age<=59 THEN '50-59'
		ELSE '60+'
    END AS age_group,
    count(*) AS count
FROM membership
GROUP BY age_group
ORDER BY age_group;

-- Q7: What is the average age of female gym members vs male gym members who attended during the week?
SELECT gender,avg(age) as Average_Age
FROM membership
GROUP BY gender;


-- Q8: What is the age distribution of female gym members who visited during the week?
SELECT 
	CASE
		WHEN age>=10 AND age<=19 THEN '10-19'
        WHEN age>=20 AND age<=29 THEN '20-29'
        WHEN age>=30 AND age<=39 THEN '30-39'
        WHEN age>=40 AND age<=49 THEN '40-49'
        WHEN age>=50 AND age<=59 THEN '50-59'
		ELSE '60+'
    END AS age_group,
    count(*) AS "female members count"
FROM membership
WHERE gender = "female"
GROUP BY age_group
ORDER BY age_group;


-- Q9: What is the age distribution of male gym members who visited during the week?
SELECT 
	CASE
		WHEN age>=10 AND age<=19 THEN '10-19'
        WHEN age>=20 AND age<=29 THEN '20-29'
        WHEN age>=30 AND age<=39 THEN '30-39'
        WHEN age>=40 AND age<=49 THEN '40-49'
        WHEN age>=50 AND age<=59 THEN '50-59'
		ELSE '60+'
    END AS age_group,
    count(*) AS "male members count"
FROM membership
WHERE gender = "male"
GROUP BY age_group
ORDER BY age_group;


-- Q10: How many visits to the gym occurred during the week?
SELECT sum(visit_per_week) AS sum
FROM membership;


-- Q11: On average, how often do members visit the gym each week?
SELECT AVG(visit_per_week) AS average
FROM membership;


-- Q12:How does the average number of gym visits during the week vary by membership type? 
SELECT membership_type,avg(visit_per_week) AS average
FROM membership
GROUP BY membership_type;


-- Q13:How does the average number of gym visits during the week vary by membership type and gender? 
SELECT gender,membership_type,avg(visit_per_week) AS average
FROM membership
GROUP BY gender,membership_type;


-- Q14: What is the average amount of time a member spends in the gym during the week?
SELECT avg(avg_time_in_gym) AS Average_time_in_Gym
FROM membership;


-- Q15: Does gender affect the average amount of time a member spends in the gym during the week?
SELECT gender,avg(avg_time_in_gym) AS Average_time_in_Gym
FROM membership
GROUP BY gender;


-- Q16: Does gender and membership type affect the average amount of time a member spends in the gym during the week?
SELECT gender,membership_type,avg(avg_time_in_gym) AS average_amount_of_time 
FROM membership
GROUP BY gender,membership_type;


-- Q17: How many members attend group fitness classes during the week?
SELECT attend_group_lesson, count(id) AS count
FROM membership
GROUP BY attend_group_lesson;


-- Q18: Does gender impact group class attendance during the week?
SELECT gender,attend_group_lesson, count(gender) AS count
FROM membership
GROUP BY attend_group_lesson,gender;


-- Q19: Does membership type impact group class attendance during the week?
SELECT membership_type,attend_group_lesson, count(membership_type) AS count
FROM membership
GROUP BY membership_type, attend_group_lesson
ORDER BY membership_type;


-- Q20: Does gender and membership type affect weekly group fitness class attendance during the week?
SELECT gender,membership_type,attend_group_lesson,count(gender) AS count
FROM membership
GROUP BY gender,membership_type,attend_group_lesson
ORDER BY gender,membership_type,count DESC;


-- Q21: How many members use the sauna during the week?
SELECT uses_sauna, count(uses_sauna) AS count
FROM membership
GROUP BY uses_sauna;


-- Q22: Does gender affect sauna usage during the week?
SELECT gender,uses_sauna, count(uses_sauna) AS count
FROM membership
GROUP BY gender,uses_sauna
ORDER BY gender;


-- Q23: Does membership type affect sauna usage during the week?
SELECT membership_type,uses_sauna, count(uses_sauna) AS count
FROM membership
GROUP BY membership_type,uses_sauna
ORDER BY membership_type;


-- Q24: Does membership type and gender affect sauna usage during the week?
SELECT gender,membership_type,uses_sauna, count(uses_sauna) AS count
FROM membership
GROUP BY gender,membership_type,uses_sauna
ORDER BY gender,membership_type;









