CREATE ROLE administrator;

GRANT SELECT, INSERT, UPDATE ON TABLE clients TO administrator;
GRANT SELECT, INSERT, UPDATE ON TABLE pass TO administrator;
GRANT SELECT, INSERT, UPDATE ON TABLE contract TO administrator;
GRANT SELECT, INSERT, UPDATE ON TABLE pass_status TO administrator;
GRANT SELECT, INSERT, UPDATE ON TABLE type_tariff TO administrator;

CREATE ROLE director;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO director;

CREATE ROLE sales_department;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE clients, pass TO sales_department;
GRANT SELECT, INSERT, UPDATE ON TABLE receipts, tariffs, type_tariff, pass_status, activity_status TO sales_department;
GRANT SELECT, INSERT ON TABLE contract TO sales_department;
GRANT SELECT ON TABLE attendance TO sales_department;

CREATE ROLE manager;
GRANT SELECT, INSERT, UPDATE ON TABLE clients, pass, pass_status, activity_status, contract 
TO manager;
GRANT SELECT ON TABLE attendance, tariffs, type_tariff, receipts TO manager;
