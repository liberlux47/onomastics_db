-- Insert Usage Types
-- Defines symbolic, temporal, and functional roles that names play in cultural or linguistic contexts
-- Based on name patterns and contexts identified in the Onomastics database

INSERT INTO UsageTypes (usage_type_id, usage_label, usage_description, is_symbolic, is_temporal, created_at, last_modified_on) VALUES

-- Roman Name Component Types
('UT00001', 'Praenomen', 'Roman personal/given name, first component of tria nomina. Limited set of traditional names abbreviated in writing (e.g., M., L., C.). Indicated individual identity within family.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00002', 'Nomen', 'Roman family/clan name (nomen gentilicium), second component of tria nomina. Indicated membership in a gens (clan). Hereditary and passed through male line.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00003', 'Cognomen', 'Roman personal surname, third component of tria nomina. Originally nickname based on physical trait, characteristic, or achievement. Became hereditary within family branches.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00004', 'Agnomen', 'Roman honorary surname or victory title. Fourth name component awarded for military victories or significant achievements (e.g., Africanus, Germanicus, Parthicus). Not hereditary.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Historical Period Usage
('UT00005', 'Republican Era', 'Names used during the Roman Republic (509-27 BCE). Characterized by traditional tria nomina system and limited praenomen set.', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00006', 'Imperial Era', 'Names used during the Roman Empire (27 BCE-476 CE). Expansion of naming conventions, imperial titles, dynastic names.', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00007', 'Regal Period', 'Names from the period of Roman kings (753-509 BCE). Includes legendary founders and early monarchs.', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00008', 'Classical Greek', 'Names from Classical Greece (5th-4th century BCE). Peak of Athenian culture, philosophy, and democracy.', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00009', 'Hellenistic Period', 'Names from the Hellenistic era (323-31 BCE). Greek culture spread by Alexander''s conquests, cultural synthesis.', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00010', 'Punic Wars Era', 'Names prominent during the Punic Wars (264-146 BCE). Carthaginian and Roman military leaders.', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Functional/Professional Usage
('UT00011', 'Military', 'Names associated with military service, generals, commanders, or martial virtues. Includes victory titles and military cognomina.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00012', 'Political', 'Names of statesmen, consuls, senators, and political leaders. Associated with governance and civic life.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00013', 'Philosophical', 'Names of philosophers, teachers, and intellectual figures. Associated with schools of thought and wisdom traditions.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00014', 'Literary', 'Names of poets, historians, playwrights, and authors. Associated with literature and written culture.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00015', 'Royal', 'Names of kings, queens, and royal family members. Associated with monarchy and dynastic succession.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Religious/Mythological Usage
('UT00016', 'Theophoric', 'Names containing or derived from divine names. Indicates devotion to or protection by a deity (e.g., Hannibal "grace of Baal").', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00017', 'Mythological', 'Names from mythology, legendary heroes, demigods, and mythical figures. May be used to invoke legendary virtues.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00018', 'Divine', 'Names of gods, goddesses, and deities. Used for religious figures rather than humans, or as theophoric elements.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00019', 'Priestly', 'Names associated with religious offices, priests, augurs, and ritual specialists.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Geographic Usage
('UT00020', 'Toponym', 'Names derived from or referring to geographic locations, cities, regions, mountains, rivers.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00021', 'Ethnic', 'Names indicating ethnic origin or tribal affiliation (e.g., Sabinus, Siculus, Creticus).', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Cultural Context
('UT00022', 'Latin', 'Names used in Roman/Latin culture and language context. Core Roman naming tradition.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00023', 'Greek', 'Names from Greek culture and language context. Used by Greeks and Hellenized peoples.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00024', 'Carthaginian', 'Names from Carthaginian/Punic culture. Phoenician-derived names used in Carthage and its sphere.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00025', 'Etruscan', 'Names from Etruscan culture, pre-Roman civilization of Italy. Often adopted into Roman naming.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00026', 'Phoenician', 'Names from Phoenician culture and language. Parent culture to Carthaginian naming traditions.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Symbolic/Descriptive Usage
('UT00027', 'Descriptive', 'Names describing physical characteristics, appearance, or personality traits (e.g., Rufus "red-haired", Niger "dark").', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00028', 'Virtue', 'Names expressing moral virtues, qualities, or aspirations (e.g., Severus "stern", Clemens "merciful").', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00029', 'Birth Order', 'Names indicating birth order or numerical position in family (e.g., Quintus "fifth", Septimus "seventh").', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00030', 'Diminutive', 'Affectionate or familiar forms of names, often with -illus/-illa suffix (e.g., Drusilla, Tertulla, Rufilla).', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Social Class/Status
('UT00031', 'Patrician', 'Names associated with patrician (aristocratic) families. Original Roman nobility.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00032', 'Plebeian', 'Names associated with plebeian (common) families who could achieve high office.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00033', 'Imperial', 'Names associated with emperors, imperial family, or adopted into imperial nomenclature.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00034', 'Equestrian', 'Names associated with equestrian order (knights), middle class between patricians and plebeians.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Historical Events/Associations
('UT00035', 'Legendary', 'Names from legendary or semi-mythical historical periods. May have dubious historicity.', TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00036', 'Founding Myth', 'Names associated with foundation myths, city origins, and legendary beginnings (e.g., Romulus, Aeneas).', TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00037', 'Tyrannical', 'Names associated with tyrants, dictators, or infamous rulers (e.g., Superbus, Nero in later usage).', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Specialized Categories
('UT00038', 'Astronomical', 'Names associated with astronomy, celestial observations, and astrology.', TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00039', 'Medical', 'Names associated with medicine, healing, and medical arts.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00040', 'Architectural', 'Names associated with architecture, engineering, and building arts.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Gender Usage
('UT00041', 'Masculine', 'Names traditionally used for males. Includes masculine nomina and cognomina.', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00042', 'Feminine', 'Names traditionally used for females. Often formed by feminizing masculine nomina (-ia, -a endings).', FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

-- Literary Context
('UT00043', 'Virgilian', 'Names appearing in Virgil''s works, especially the Aeneid. Literary and legendary context.', TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00044', 'Homeric', 'Names from Homer''s epics (Iliad, Odyssey). Greek heroic tradition.', TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('UT00045', 'Historical', 'Names of verified historical persons with documented existence. Distinguished from legendary.', FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);