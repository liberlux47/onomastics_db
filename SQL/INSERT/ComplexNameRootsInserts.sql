-- ComplexNameRoots Insert Script
-- PREREQUISITES: 
--   1. NameRootsInserts.sql must be executed (provides root_id references)
--   2. ComplexNamesInserts.sql must be executed (provides complex_name_id references)
-- DEPENDENCIES: References ComplexNames (FK: complex_name_id) and NameRoots (FK: root_id)

INSERT INTO ComplexNameRoots (complex_name_id, root_id, position_in_compound, position_order, has_linking_vowel) VALUES

-- CN00001: Teisander (τεισ- + -ανδρος)
('CN00001', 'NR00208', 'first', 1, FALSE), -- τεισ- (tisis/teino)
('CN00001', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00002: Periander (περι- + -ανδρος)
('CN00002', 'NR00209', 'first', 1, FALSE), -- περι- (peri "around, exceedingly")
('CN00002', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00003: Nicander (νικ- + -ανδρος)
('CN00003', 'NR00163', 'first', 1, TRUE), -- νικ- (nike "victory")
('CN00003', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00004: Alexander (ἀλεξ- + -ανδρος)
('CN00004', 'NR00210', 'first', 1, FALSE), -- ἀλεξ- (alexo "to defend")
('CN00004', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00005: Cassander (κασσ- + -ανδρος)
('CN00005', 'NR00211', 'first', 1, FALSE), -- κασσ- (kassis "brother/helper")
('CN00005', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00006: Lysander (λυσ- + -ανδρος)
('CN00006', 'NR00212', 'first', 1, FALSE), -- λυσ- (lysis "freeing")
('CN00006', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00007: Evander (εὐ- + -ανδρος)
('CN00007', 'NR00213', 'first', 1, FALSE), -- εὐ- (eu "good, well")
('CN00007', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00008: Peisiphilus (πεισι- + -φιλος)
('CN00008', 'NR00214', 'first', 1, FALSE), -- πεισι- (peitho "to persuade")
('CN00008', 'NR00164', 'second', 2, FALSE), -- φιλ- (philos "friend")

-- CN00009: Nicomachus (νικο- + -μαχος)
('CN00009', 'NR00163', 'first', 1, TRUE), -- νικ- (nike "victory")
('CN00009', 'NR00169', 'second', 2, FALSE), -- μαχ- (mache "battle")

-- CN00010: Nicodemus (νικο- + -δημος)
('CN00010', 'NR00163', 'first', 1, TRUE), -- νικ- (nike "victory")
('CN00010', 'NR00165', 'second', 2, FALSE), -- δημ- (demos "people")

-- CN00011: Theodora (θεο- + -δωρα)
('CN00011', 'NR00215', 'first', 1, TRUE), -- θεο- (theos "god")
('CN00011', 'NR00168', 'second', 2, FALSE), -- δωρ- (doron "gift")

-- CN00012: Baalhanno (בעל- + -חנן)
('CN00012', 'NR00216', 'first', 1, FALSE), -- בעל- (Baal "lord")
('CN00012', 'NR00217', 'second', 2, FALSE), -- חנן- (hanno "grace")

-- ===========================================================================
-- NEW BATCH: Philosopher/Poet Names (CN00013-CN00030)
-- ===========================================================================

-- CN00013: Anaximander (ἄναξ- + -ανδρος)
('CN00013', 'NR00218', 'first', 1, FALSE), -- ἄναξ- (anax "lord, king")
('CN00013', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00014: Aristotle (ἄριστο- + -τέλης)
('CN00014', 'NR00219', 'first', 1, FALSE), -- ἄριστο- (aristos "best")
('CN00014', 'NR00220', 'second', 2, FALSE), -- -τέλης (telos "purpose")

-- CN00015: Xenocrates (ξενο- + -κράτης)
('CN00015', 'NR00221', 'first', 1, TRUE), -- ξενο- (xenos "stranger")
('CN00015', 'NR00222', 'second', 2, FALSE), -- -κράτης (kratos "power")

-- CN00016: Cleanthes (κλε- + -άνθης)
('CN00016', 'NR00161', 'first', 1, FALSE), -- κλε- (kleos "glory")
('CN00016', 'NR00223', 'second', 2, FALSE), -- -άνθης (anthos "flower")

-- CN00017: Chrysippus (χρυσο- + -ίππος)
('CN00017', 'NR00224', 'first', 1, TRUE), -- χρυσο- (chrysos "golden")
('CN00017', 'NR00225', 'second', 2, FALSE), -- -ίππος (hippos "horse")

-- CN00018: Speusippus (σπευδ- + -ίππος)
('CN00018', 'NR00226', 'first', 1, FALSE), -- σπευδ- (speudo "hasten")
('CN00018', 'NR00225', 'second', 2, FALSE), -- -ίππος (hippos "horse")

-- CN00019: Theophrastus (θεο- + -φραστος)
('CN00019', 'NR00215', 'first', 1, TRUE), -- θεο- (theos "god")
('CN00019', 'NR00229', 'second', 2, FALSE), -- -φραστος (phrazo "speak")

-- CN00020: Pythagoras (Πυθ- + -αγόρας)
('CN00020', 'NR00230', 'first', 1, FALSE), -- Πυθ- (Pytho "Apollo")
('CN00020', 'NR00231', 'second', 2, FALSE), -- -αγόρας (agora "speaker")

-- CN00021: Philolaus (φιλο- + -λαος)
('CN00021', 'NR00164', 'first', 1, TRUE), -- φιλο- (philos "loving")
('CN00021', 'NR00232', 'second', 2, FALSE), -- -λαος (laos "people")

-- CN00022: Apollodorus (Ἀπολλο- + -δωρος)
('CN00022', 'NR00233', 'first', 1, TRUE), -- Ἀπολλο- (Apollo "god")
('CN00022', 'NR00168', 'second', 2, FALSE), -- -δωρος (doron "gift")

-- CN00023: Archilochus (ἀρχι- + -λοχος)
('CN00023', 'NR00234', 'first', 1, FALSE), -- ἀρχι- (arche "chief")
('CN00023', 'NR00235', 'second', 2, FALSE), -- -λοχος (lochos "ambush")

-- CN00024: Stesichorus (στησι- + -χορος)
('CN00024', 'NR00237', 'first', 1, FALSE), -- στησι- (histemi "establish")
('CN00024', 'NR00238', 'second', 2, FALSE), -- -χορος (choros "chorus")

-- CN00025: Panaetius (παν- + -αίτιος)
('CN00025', 'NR00239', 'first', 1, FALSE), -- παν- (pan "all")
('CN00025', 'NR00240', 'second', 2, FALSE), -- -αίτιος (aitia "cause")

-- CN00026: Dicaearchus (δικαιο- + -αρχος)
('CN00026', 'NR00243', 'first', 1, TRUE), -- δικαιο- (dikaios "just")
('CN00026', 'NR00244', 'second', 2, FALSE), -- -αρχος (archos "ruler")

-- CN00027: Aristoxenus (ἄριστο- + -ξένος)
('CN00027', 'NR00219', 'first', 1, TRUE), -- ἄριστο- (aristos "best")
('CN00027', 'NR00221', 'second', 2, FALSE), -- -ξένος (xenos "guest")

-- CN00028: Clearchus (κλε- + -αρχος)
('CN00028', 'NR00161', 'first', 1, FALSE), -- κλε- (kleos "glory")
('CN00028', 'NR00244', 'second', 2, FALSE), -- -αρχος (archos "ruler")

-- CN00029: Arcesilaus (ἀρκε- + -σίλαος)
('CN00029', 'NR00245', 'first', 1, FALSE), -- ἀρκε- (arkeo "defend")
('CN00029', 'NR00246', 'second', 2, FALSE), -- -σίλαος (silaos "people")

-- CN00030: Telecles (τηλε- + -κλῆς)
('CN00030', 'NR00247', 'first', 1, FALSE), -- τηλε- (tele "far")
('CN00030', 'NR00248', 'second', 2, FALSE); -- -κλῆς (kleos "glory")
