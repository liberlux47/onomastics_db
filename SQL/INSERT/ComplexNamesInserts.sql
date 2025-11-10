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
('CN00012', 'DN00063', 'בעל-', '-חנן', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Baalhanno (Baal + hanno)

-- ===========================================================================
-- NEW BATCH: Philosopher/Poet Names (NA000426-NA000483)
-- ===========================================================================

('CN00013', 'DN00064', 'ἄναξ-', '-ανδρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀναξίμανδρος (Anaximander): lord of men
('CN00014', 'DN00065', 'ἄριστο-', '-τέλης', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀριστοτέλης (Aristotle): best purpose
('CN00015', 'DN00066', 'ξενο-', '-κράτης', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ξενοκράτης (Xenocrates): foreign power
('CN00016', 'DN00067', 'κλε-', '-άνθης', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Κλεάνθης (Cleanthes): glory blooming
('CN00017', 'DN00068', 'χρυσο-', '-ίππος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Χρύσιππος (Chrysippus): golden horse
('CN00018', 'DN00069', 'σπευδ-', '-ίππος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Σπεύσιππος (Speusippus): hastening horses
('CN00019', 'DN00070', 'θεο-', '-φραστος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Θεόφραστος (Theophrastus): god-speaking
('CN00020', 'DN00071', 'Πυθ-', '-αγόρας', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Πυθαγόρας (Pythagoras): Pythian speaker
('CN00021', 'DN00072', 'φιλο-', '-λαος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Φιλόλαος (Philolaus): lover of people
('CN00022', 'DN00073', 'Ἀπολλο-', '-δωρος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀπολλόδωρος (Apollodorus): gift of Apollo
('CN00023', 'DN00074', 'ἀρχι-', '-λοχος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀρχίλοχος (Archilochus): leader of ambush
('CN00024', 'DN00075', 'στησι-', '-χορος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Στησίχορος (Stesichorus): establisher of choruses
('CN00025', 'DN00076', 'παν-', '-αίτιος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Παναίτιος (Panaetius): all-causing
('CN00026', 'DN00077', 'δικαιο-', '-αρχος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Δικαίαρχος (Dicaearchus): just ruler
('CN00027', 'DN00078', 'ἄριστο-', '-ξένος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀριστόξενος (Aristoxenus): best guest
('CN00028', 'DN00079', 'κλε-', '-αρχος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Κλέαρχος (Clearchus): glorious ruler
('CN00029', 'DN00080', 'ἀρκε-', '-σίλαος', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀρκεσίλαος (Arcesilaus): defender of people
('CN00030', 'DN00081', 'τηλε-', '-κλῆς', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Τηλεκλῆς (Telecles): far-famed
