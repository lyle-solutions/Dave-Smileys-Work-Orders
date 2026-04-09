-- ============================================================
--  DAVE_SMILEYS_WORK_ORDERS
--  02_sample_data.sql
--  Sample data for all tables
-- ============================================================

USE DAVE_SMILEYS_WORK_ORDERS;

INSERT INTO CUSTOMER (CUSTOMER_NAME, CONTACT_NAME, PHONE, EMAIL)
VALUES
('Anderson Community Schools', 'Mark Phillips', '765-555-1001', 'mphillips@acs.k12.in.us'),
('Noblesville Public Library', 'Sarah Jennings', '317-555-2211', 'sjennings@npl.org'),
('Fort Wayne Medical Center', 'Dr. Alan Brooks', '260-555-3300', 'abrooks@fwmed.org'),
('Pendleton Fire Department', 'Chief Ron Miller', '765-555-4411', 'rmiller@pendletonfd.gov'),
('Gas City Utilities', 'Karen Doyle', '765-555-5522', 'kdoyle@gascityutilities.gov');

INSERT INTO SERVICE_LOCATION (CUSTOMER_ID, ADDRESS_LINE1, ADDRESS_LINE2, CITY, STATE, ZIP)
VALUES
(1, '1200 Main St', NULL, 'Anderson', 'IN', '46011'),
(1, '500 Schoolhouse Rd', NULL, 'Anderson', 'IN', '46012'),
(2, '1 Library Plaza', NULL, 'Noblesville', 'IN', '46060'),
(3, '200 Medical Pkwy', NULL, 'Fort Wayne', 'IN', '46805'),
(4, '300 Firehouse Ln', NULL, 'Pendleton', 'IN', '46064'),
(5, '101 Utility Dr', NULL, 'Gas City', 'IN', '46933');

INSERT INTO TECHNICIAN (TECHNICIAN_NAME, PHONE, EMAIL)
VALUES
('Dave Smiley', '317-555-9001', 'dsmiley@workorders.com'),
('Jamie Lyle', '317-555-9002', 'jlyle@workorders.com'),
('Chris Thompson', '317-555-9003', 'cthompson@workorders.com');

INSERT INTO PART (PART_NAME, PART_DESCRIPTION, UNIT_COST)
VALUES
('CAT6 Cable 1000ft', 'Bulk box, plenum rated', 189.99),
('RJ45 Connectors (50pk)', 'Shielded connectors', 24.99),
('Patch Panel 24-Port', 'Rack mountable', 89.99),
('Wireless Access Point', 'Ceiling mount, PoE', 129.99),
('Network Switch 24-Port', 'Managed, rack mount', 349.99);

INSERT INTO WORK_ORDER (CUSTOMER_ID, SERVICE_LOCATION_ID, TECHNICIAN_ID, REQUESTED_DATE, DATE_COMPLETED, STATUS, DESCRIPTION)
VALUES
(1, 1, 1, '2024-02-01', '2024-02-02', 'COMPLETED', 'Run new CAT6 drops in admin office'),
(2, 3, 2, '2024-02-05', NULL, 'IN_PROGRESS', 'Install new wireless access points'),
(3, 4, 3, '2024-02-10', NULL, 'SCHEDULED', 'Replace failing network switch'),
(4, 5, 1, '2024-02-12', '2024-02-13', 'COMPLETED', 'Install patch panel and terminate lines'),
(5, 6, 2, '2024-02-15', NULL, 'OPEN', 'Troubleshoot intermittent connectivity');

INSERT INTO WORK_ORDER_PART (WORK_ORDER_ID, PART_ID, QUANTITY)
VALUES
(1, 1, 1),
(1, 2, 10),
(2, 4, 2),
(3, 5, 1),
(4, 3, 1),
(4, 2, 12);

INSERT INTO WORK_ORDER_BILLING (WORK_ORDER_ID, LABOR_HOURS, LABOR_RATE, MISC_COST)
VALUES
(1, 6.5, 95.00, 12.50),
(2, 3.0, 95.00, 0),
(3, 2.0, 95.00, 0),
(4, 5.0, 95.00, 18.00),
(5, 1.5, 95.00, 0);
