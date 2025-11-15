-- Insert Script Regions for Latin
INSERT INTO ScriptRegions (region_id, script_id, region_name, is_primary_region, historical_period, notes, created_at, last_modified_on) VALUES
('RG000001', 'SC00001', 'Europe', TRUE, 'Ancient Rome to Present', 'Primary historical origin in ancient Rome and Latium, spread throughout Europe', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000002', 'SC00001', 'Mediterranean', FALSE, '500 BCE - Present', 'Spread via Roman expansion and trade', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000003', 'SC00001', 'Global', FALSE, '1500 CE - Present', 'Worldwide adoption through colonization and standardization', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Script Regions for Etruscan
INSERT INTO ScriptRegions (region_id, script_id, region_name, is_primary_region, historical_period, notes, created_at, last_modified_on) VALUES
('RG000007', 'SC00003', 'Ancient Italy (Etruria, modern Tuscany)', TRUE, '700 BCE - 100 CE', 'Used by Etruscan civilization, influenced early Latin script', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Script Regions for Greek
INSERT INTO ScriptRegions (region_id, script_id, region_name, is_primary_region, historical_period, notes, created_at, last_modified_on) VALUES
('RG000004', 'SC00002', 'Greece', TRUE, '800 BCE - Present', 'Primary historical origin in ancient Greece', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000005', 'SC00002', 'Eastern Mediterranean', FALSE, '300 BCE - Present', 'Hellenistic expansion and Byzantine Empire', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000006', 'SC00002', 'Anatolia', FALSE, '300 BCE - 1500 CE', 'Greek-speaking communities in Asia Minor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Script Regions for Phoenician
INSERT INTO ScriptRegions (region_id, script_id, region_name, is_primary_region, historical_period, notes, created_at, last_modified_on) VALUES
('RG000008', 'SC00004', 'Phoenicia', TRUE, '1200 BCE - 300 BCE', 'Primary origin in ancient Phoenicia (modern Lebanon)', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000009', 'SC00004', 'Mediterranean', FALSE, '1000 BCE - 300 BCE', 'Spread through Phoenician trade networks and colonies', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Script Regions for Hebrew
INSERT INTO ScriptRegions (region_id, script_id, region_name, is_primary_region, historical_period, notes, created_at, last_modified_on) VALUES
('RG000010', 'SC00005', 'Israel', TRUE, '1000 BCE - Present', 'Primary historical and modern usage region', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000011', 'SC00005', 'Jewish diaspora', FALSE, '586 BCE - Present', 'Maintained in Jewish communities worldwide', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Script Regions for Aramaic
INSERT INTO ScriptRegions (region_id, script_id, region_name, is_primary_region, historical_period, notes, created_at, last_modified_on) VALUES
('RG000012', 'SC00006', 'Levant', TRUE, '1000 BCE - 700 CE', 'Primary region including Syria, Lebanon, Israel/Palestine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000013', 'SC00006', 'Mesopotamia', FALSE, '700 BCE - 700 CE', 'Lingua franca of Persian and Neo-Babylonian empires', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Script Regions for Syriac
INSERT INTO ScriptRegions (region_id, script_id, region_name, is_primary_region, historical_period, notes, created_at, last_modified_on) VALUES
('RG000014', 'SC00007', 'Syria', TRUE, '100 CE - Present', 'Developed from Aramaic in ancient Syria', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000015', 'SC00007', 'Mesopotamia', FALSE, '200 CE - Present', 'Used by Syriac Christian communities in Iraq', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Script Regions for Arabic
INSERT INTO ScriptRegions (region_id, script_id, region_name, is_primary_region, historical_period, notes, created_at, last_modified_on) VALUES
('RG000016', 'SC00008', 'Arabian Peninsula', TRUE, '500 CE - Present', 'Primary origin in pre-Islamic and Islamic Arabia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000017', 'SC00008', 'Middle East', FALSE, '632 CE - Present', 'Spread through Islamic conquests', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000018', 'SC00008', 'North Africa', FALSE, '640 CE - Present', 'Islamic expansion into Egypt, Maghreb, and beyond', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000019', 'SC00008', 'South Asia', FALSE, '711 CE - Present', 'Used for Urdu, Persian, and other languages', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('RG000020', 'SC00008', 'Southeast Asia', FALSE, '1200 CE - Present', 'Adapted for Malay, Indonesian, and regional languages', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);