-- Insert Language Families
-- Organizes languages by historical lineage, branch classification, and extinction status
-- Based on scripts and languages used in the Onomastics database

INSERT INTO LanguageFamilies (family_id, family_name, family_description, branch_name, is_proto_family, is_extinct, created_at, last_modified_on) VALUES

-- Indo-European Family: Italic Branch
('LF00001', 'Indo-European', 'The Italic branch of Indo-European, comprising Latin and related Italic languages of ancient Italy including Oscan, Umbrian, and Sabine. Latin became the dominant language of the Roman Empire and ancestor of the Romance languages.', 'Italic', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Indo-European Family: Hellenic Branch
('LF00002', 'Indo-European', 'The Hellenic branch of Indo-European, encompassing Ancient Greek (Archaic, Classical, Koine) and Modern Greek. Greek has the longest documented history of any Indo-European language, with written records spanning over 3,400 years from Mycenaean Greek (c. 1450 BCE) to the present.', 'Hellenic', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Indo-European Family: Celtic Branch
('LF00003', 'Indo-European', 'The Celtic branch of Indo-European, including Continental Celtic languages (Gaulish, Celtiberian, Lepontic) and Insular Celtic languages (Brythonic and Goidelic). Gaulish was spoken in ancient Gaul and influenced Latin name substrate in regions conquered by Rome.', 'Celtic', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Afro-Asiatic Family: Northwest Semitic Branch
('LF00004', 'Afro-Asiatic', 'The Northwest Semitic branch of Afro-Asiatic, comprising Phoenician/Punic, Hebrew, Aramaic, and Ugaritic. Phoenician was the language of Carthage and Phoenician colonies throughout the Mediterranean. Hebrew was revived as a spoken language in the 20th century.', 'Northwest Semitic', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Tyrsenian Family
('LF00005', 'Tyrsenian', 'Pre-Indo-European language family of the Mediterranean region, including Etruscan (spoken in ancient Etruria), Raetic (Alpine region), and Lemnian (island of Lemnos). Etruscan had profound influence on early Roman civilization, religion, and nomenclature before being supplanted by Latin.', NULL, FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Proto-Indo-European (Reconstructed)
('LF00006', 'Proto-Indo-European', 'Reconstructed proto-language that is the common ancestor of all Indo-European languages. Spoken approximately 4500-2500 BCE, likely in the Pontic-Caspian steppe. Reconstructed through comparative method from daughter languages including Latin, Greek, Sanskrit, and others.', NULL, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Proto-Italic (Reconstructed)
('LF00007', 'Proto-Italic', 'Reconstructed proto-language ancestral to the Italic branch, including Latin, Oscan, Umbrian, and related languages. Spoken in the Italian peninsula before differentiation into individual Italic languages, approximately 1500-500 BCE.', 'Italic (Proto)', TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Proto-Semitic (Reconstructed)
('LF00008', 'Proto-Semitic', 'Reconstructed proto-language ancestral to all Semitic languages including Akkadian, Hebrew, Phoenician, Arabic, and Aramaic. Spoken approximately 3750 BCE in the Levant or Arabian Peninsula. Source of common Semitic roots found in Phoenician and Hebrew names.', NULL, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Substrate/Adstrate Languages (Pre-Indo-European Italian)
('LF00009', 'Pre-Indo-European', 'Non-Indo-European substrate languages of pre-Roman Italy, including undeciphered or poorly attested languages that influenced Latin toponyms and personal names. Includes possible Mediterranean substrate influence on Latin onomastics before Indo-European arrival.', 'Italic Substrate', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);