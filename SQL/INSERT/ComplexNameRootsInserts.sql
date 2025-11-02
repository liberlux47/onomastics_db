-- ComplexNameRoots Insert Script
-- PREREQUISITES: 
--   1. NameRootsInserts.sql must be executed (provides root_id references)
--   2. ComplexNamesInserts.sql must be executed (provides complex_name_id references)
-- DEPENDENCIES: References ComplexNames (FK: complex_name_id) and NameRoots (FK: root_id)

INSERT INTO ComplexNameRoots (complex_name_id, root_id, position_in_compound, position_order, has_linking_vowel) VALUES

-- CN00001: Teisander (τεισ- + -ανδρος)
('CNR0001', 'CN00001', 'NR00208', 'first', 1, FALSE), -- τεισ- (tisis/teino)
('CNR0002', 'CN00001', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00002: Periander (περι- + -ανδρος)
('CNR0003', 'CN00002', 'NR00209', 'first', 1, FALSE), -- περι- (peri "around, exceedingly")
('CNR0004', 'CN00002', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00003: Nicander (νικ- + -ανδρος)
('CNR0005', 'CN00003', 'NR00163', 'first', 1, TRUE), -- νικ- (nike "victory")
('CNR0006', 'CN00003', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00004: Alexander (ἀλεξ- + -ανδρος)
('CNR0007', 'CN00004', 'NR00210', 'first', 1, FALSE), -- ἀλεξ- (alexo "to defend")
('CNR0008', 'CN00004', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00005: Cassander (κασσ- + -ανδρος)
('CNR0009', 'CN00005', 'NR00211', 'first', 1, FALSE), -- κασσ- (kassis "brother/helper")
('CNR0010', 'CN00005', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00006: Lysander (λυσ- + -ανδρος)
('CNR0011', 'CN00006', 'NR00212', 'first', 1, FALSE), -- λυσ- (lysis "freeing")
('CNR0012', 'CN00006', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00007: Evander (εὐ- + -ανδρος)
('CNR0013', 'CN00007', 'NR00213', 'first', 1, FALSE), -- εὐ- (eu "good, well")
('CNR0014', 'CN00007', 'NR00162', 'second', 2, FALSE), -- ἀνδρ- (aner "man")

-- CN00008: Peisiphilus (πεισι- + -φιλος)
('CNR0015', 'CN00008', 'NR00214', 'first', 1, FALSE), -- πεισι- (peitho "to persuade")
('CNR0016', 'CN00008', 'NR00164', 'second', 2, FALSE), -- φιλ- (philos "friend")

-- CN00009: Nicomachus (νικο- + -μαχος)
('CNR0017', 'CN00009', 'NR00163', 'first', 1, TRUE), -- νικ- (nike "victory")
('CNR0018', 'CN00009', 'NR00169', 'second', 2, FALSE), -- μαχ- (mache "battle")

-- CN00010: Nicodemus (νικο- + -δημος)
('CNR0019', 'CN00010', 'NR00163', 'first', 1, TRUE), -- νικ- (nike "victory")
('CNR0020', 'CN00010', 'NR00165', 'second', 2, FALSE), -- δημ- (demos "people")

-- CN00011: Theodora (θεο- + -δωρα)
('CNR0021', 'CN00011', 'NR00215', 'first', 1, TRUE), -- θεο- (theos "god")
('CNR0022', 'CN00011', 'NR00168', 'second', 2, FALSE), -- δωρ- (doron "gift")

-- CN00012: Baalhanno (בעל- + -חנן)
('CNR0023', 'CN00012', 'NR00216', 'first', 1, FALSE), -- בעל- (Baal "lord")
('CNR0024', 'CN00012', 'NR00217', 'second', 2, FALSE); -- חנן- (hanno "grace")
