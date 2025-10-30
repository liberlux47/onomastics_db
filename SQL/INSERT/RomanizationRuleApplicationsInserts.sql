-- Insert Romanization Rule Applications
-- Tracks where and how romanization standards are applied across the database

INSERT INTO RomanizationRuleApplications (application_id, rule_id, application_context, context_description, target_field, is_primary_standard, priority_order, created_at, last_modified_on) VALUES

-- Latin Script Applications (SC00001)
('RA00001', 'RR00001', 'Direct Script', 'Latin names use their native script directly without romanization needed. Classical orthography is the canonical form.', 'name_text', TRUE, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00002', 'RR00001', 'Etymology Field', 'Latin etymological roots use Classical Latin orthography with macrons for vowel length in scholarly contexts.', 'etymology', TRUE, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Greek Script Applications (SC00002)
('RA00003', 'RR00004', 'Romanized Form', 'Greek names use Ancient Greek (Classical) Standard for romanized_form field, preserving scholarly precision with diacritics and vowel length.', 'romanized_form', TRUE, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00004', 'RR00004', 'Etymology Field', 'Greek etymological analysis uses Classical Standard to preserve phonological distinctions (aspirated stops, vowel length, pitch accents).', 'etymology', TRUE, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00005', 'RR00003', 'Display Name', 'Modern Greek Transliteration used for simplified display in non-scholarly contexts (user interfaces, general publications).', 'romanized_form', FALSE, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00006', 'RR00005', 'Database Indexing', 'Beta Code Standard used for computational processing, search indexing, and ASCII-compatible sorting of Greek names.', NULL, FALSE, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Phoenician Script Applications (SC00004)
('RA00007', 'RR00008', 'Etymology Field', 'Academic Phoenician Standard used in etymology field for scholarly precision with full diacritical marking (ḥ, ṭ, ṣ, ʿ, ʾ, š).', 'etymology', TRUE, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00008', 'RR00010', 'Romanized Form', 'Punic Conventional Standard used for romanized_form field, providing practical Latin-influenced transcriptions for general readability (e.g., Hannibal, Hamilcar).', 'romanized_form', TRUE, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00009', 'RR00009', 'Root Transliteration', 'SBL Phoenician Standard used for systematic root analysis in morphological decomposition, harmonized with Hebrew conventions.', 'etymology', FALSE, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00010', 'RR00011', 'Comparative Phonology', 'Phoenician IPA Standard used for phonetic reconstruction and comparative Semitic linguistics research.', NULL, FALSE, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00011', 'RR00012', 'Neo-Punic Context', 'Neo-Punic Simplified Standard used for Late Punic period inscriptions (3rd BCE - 2nd CE) reflecting phonological changes.', 'etymology', FALSE, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Cross-Script Applications
('RA00012', 'RR00006', 'ISO Compliance', 'ISO 843 Standard used for international data exchange and library catalog systems requiring standardized Greek transliteration.', 'romanized_form', FALSE, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('RA00013', 'RR00007', 'British Academic', 'British School at Athens Standard used for publications following UK classical scholarship conventions.', 'romanized_form', FALSE, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
