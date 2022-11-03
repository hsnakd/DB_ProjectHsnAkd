SELECT *
FROM orocrm_contact;

SELECT *
FROM orocrm_contact_email;

SELECT id, first_name, last_name
FROM orocrm_contact
WHERE first_name = 'Mister';

SELECT *
FROM orocrm_contact_email
WHERE owner_id = 20;

-- write the query to get first_name, last_name, email for Mister
SELECT first_name, last_name, orocrm_contact_email.email
FROM orocrm_contact INNER JOIN orocrm_contact_email
ON orocrm_contact.id = orocrm_contact_email.owner_id
WHERE first_name = 'Mister';

