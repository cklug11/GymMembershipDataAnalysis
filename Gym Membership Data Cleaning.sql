Create DATABASE gym;

USE gym;

SELECT * FROM membership;

-- Remove irrelevent data.
ALTER TABLE membership
DROP COLUMN birthday,
DROP COLUMN avg_time_check_in,
DROP COLUMN avg_time_check_out,
DROP COLUMN fav_drink,
DROP COLUMN personal_training,
DROP COLUMN attend_group_lesson,
Drop COLUMN fav_group_lesson,
DROP COLUMN name_personal_trainer,
DROP COLUMN days_per_week;

-- Rename Column for readability
ALTER TABLE membership
CHANGE abonoment_type membership_type text;

-- Looking to see if any columns allow Null values
DESCRIBE membership;

-- Discovered that all the columns allowed for Null values,so I needed to see if any Null Values existed in the data
SELECT *
FROM membership
WHERE id IS NULL
	OR gender IS NULL
    OR Age IS NULL
    OR membership_type IS NULL
    OR visit_per_week IS NULL
    OR attend_group_lesson IS NULL
    OR avg_time_in_gym IS NULL
    OR uses_sauna IS NULL;

-- Found no Null values & Data is ready to be analyzed
SELECT *
FROM membership;