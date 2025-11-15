    -- MorphologyTypes Insert Script
-- PREREQUISITES: None - this is a reference table and should be loaded first
-- DEPENDENCIES: None

INSERT INTO MorphologyTypes (morphology_type_id, label, description, is_prefix_based, is_suffix_based, is_root_transform, is_semantic, is_historical, is_productive, created_at, last_modified_on) VALUES

    ('MT00001', 'Diminutive', 'Name formed by adding diminutive suffixes (e.g., -ulus, -illa, -ellus) to indicate smallness, youth, or affection. Common in Latin names like Lucullus (little Lucius), Drusilla (little Drusus), Caeculus (little blind one).', FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00002', 'Augmentative', 'Name formed with augmentative affixes indicating greatness or largeness. Examples include Maximus (greatest), Magnus (great). Common in Latin cognomina to emphasize exceptional qualities.', FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00003', 'Patronymic', 'Name derived from father''s name, indicating "son of" or "descendant of". In Latin, often formed with -ius suffix (e.g., Lucianus from Lucius, Octavianus from Octavius). Common pattern in Roman nomenclature.', FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00004', 'Matronymic', 'Name derived from mother''s name, indicating "child of" or "descendant of" the maternal line. Less common than patronymics in Roman culture but present in certain contexts.', FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00005', 'Compound', 'Name formed by combining two or more roots, especially common in Greek (e.g., Alexander from ἀλέξ- "defend" + -ανδρος "man"). Compound names often express complex meanings through morpheme combination.', FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00006', 'Honorific', 'Name or cognomen awarded to honor achievements, victories, or exceptional service. Examples include Africanus (conqueror of Africa), Magnus (the Great). Often added as agnomina in Roman naming.', FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00007', 'Theophoric', 'Name containing a divine element, referencing gods or religious concepts. Common in Greek names with θεο- (god) prefix. Examples include Theodorus (gift of god), names with Jupiter/Jove elements.', TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00008', 'Locative', 'Name derived from geographic origin, indicating "from [place]" or association with a location. Common in Latin cognomina: Siculus (from Sicily), Camerinus (from Cameria), Africanus (from Africa).', FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00009', 'Occupational', 'Name derived from profession, office, or social role. Examples include Augurinus (from augur/diviner), Faber (smith), Pistor (miller). Common in Roman cognomina indicating family trades.', FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00010', 'Descriptive', 'Name describing physical characteristics, personality traits, or distinguishing features. Very common in Latin cognomina: Rufus (red-haired), Brutus (dull), Severus (stern), Cornutus (horned).', FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00011', 'Mythological', 'Name derived from mythological figures, heroes, or legendary characters. Examples include Romulus (legendary founder of Rome), Remus (twin of Romulus), names referencing Trojan/Greek heroes.', FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

    ('MT00012', 'Invented', 'Modern or deliberately created name without historical precedent, often used in creative contexts for worldbuilding, fiction, or alternate history. May follow morphological patterns of historical names.', FALSE, FALSE, FALSE, TRUE, FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
