-- ComplexNames Insert Script
-- PREREQUISITES: 
--   1. MorphologyTypesInserts.sql must be executed first
--   2. DerivedNamesInserts.sql must be executed before this file
-- DEPENDENCIES: References DerivedNames (FK: derived_name_id)

INSERT INTO ComplexNames (complex_name_id, derived_name_id, prefix, suffix, created_at, last_modified_on) VALUES

-- Greek Compound Names with -ander suffix (ἀνήρ/ἀνδρός "man")
('CN00001', 'DN00052', 'τεισ-', '-ανδρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Teisander (tisis/teino + aner)
('CN00002', 'DN00053', 'περι-', '-ανδρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Periander (peri + aner)
('CN00003', 'DN00055', 'νικ-', '-ανδρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Nicander (nike + aner)
('CN00004', 'DN00057', 'ἀλεξ-', '-ανδρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Alexander (alexo + aner)
('CN00005', 'DN00059', 'κασσ-', '-ανδρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cassander (kassis + aner)
('CN00006', 'DN00060', 'λυσ-', '-ανδρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Lysander (lysis + aner)
('CN00007', 'DN00062', 'εὐ-', '-ανδρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Evander (eu + aner)

-- Greek Compound Names with -philus suffix (φίλος "friend, loving")
('CN00008', 'DN00054', 'πεισι-', '-φιλος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Peisiphilus (peitho + philos)

-- Greek Compound Names with -machus suffix (μάχη "battle")
('CN00009', 'DN00056', 'νικο-', '-μαχος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Nicomachus (nike + mache)

-- Greek Compound Names with -demus suffix (δῆμος "people")
('CN00010', 'DN00058', 'νικο-', '-δημος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Nicodemus (nike + demos)

-- Greek Theophoric Compound with doron (δῶρον "gift")
('CN00011', 'DN00061', 'θεο-', '-δωρα', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Theodora (theos + doron)

-- Phoenician Theophoric Compound
('CN00012', 'DN00063', 'בעל-', '-חנן', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Baalhanno (Baal + hanno)
