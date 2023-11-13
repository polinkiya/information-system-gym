-- Create the role
CREATE ROLE administrator;

-- Grant the privileges to the role for the "clients" table
GRANT SELECT, INSERT, UPDATE ON TABLE clients TO administrator;
GRANT SELECT, INSERT, UPDATE ON TABLE pass TO administrator;
GRANT SELECT, INSERT, UPDATE ON TABLE contract TO administrator;
GRANT SELECT, INSERT, UPDATE ON TABLE pass_status TO administrator;
GRANT SELECT, INSERT, UPDATE ON TABLE type_tariff TO administrator;

-- Create the role
CREATE ROLE director;

-- Grant SELECT privileges on all tables in the "public" schema
GRANT SELECT ON ALL TABLES IN SCHEMA public TO director;


