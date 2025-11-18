-- DerivedNames Insert Script
-- PREREQUISITES: 
--   1. MorphologyTypesInserts.sql must be executed first
--   2. NamesInserts.sql must be executed (provides name_id references)
-- DEPENDENCIES: References MorphologyTypes (FK: type) and Names (FK: name_id)

INSERT INTO DerivedNames (derived_name_id, name_id, type, created_at, last_modified_on) VALUES

-- Diminutives
('DN00001', 'NA000009', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Lucullus (diminutive of Lucius)
('DN00002', 'NA000215', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Catillus (possibly diminutive form)
('DN00003', 'NA000217', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Caeculus (little blind one)
('DN00004', 'NA000246', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Saticula (little sown field)
('DN00005', 'NA000259', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Aequiculi (little Aequi)
('DN00006', 'NA000360', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Tigelinus (possibly diminutive)
('DN00007', 'NA000380', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Drusilla (diminutive of Drusus)
('DN00008', 'NA000384', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Tertulla (little third daughter)
('DN00009', 'NA000385', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Terentilla (little Terentian woman)
('DN00010', 'NA000386', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Rufilla (little red one)

-- Augmentatives
('DN00011', 'NA000003', 'MT00002', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Maximus (greatest)

-- Patronymics
('DN00012', 'NA000010', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Lucianus (of Lucius)
('DN00013', 'NA000011', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Octavianus (of Octavius)
('DN00014', 'NA000078', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Quinctius (derived from Quintus)

-- Locatives
('DN00015', 'NA000018', 'MT00008', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Siculus (from Sicily)
('DN00016', 'NA000021', 'MT00008', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Camerinus (from Cameria)

-- Occupational
('DN00017', 'NA000020', 'MT00009', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Augurinus (from augur/diviner)

-- Descriptive (Physical/Personality Traits)
('DN00018', 'NA000002', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Scaevola (left-handed)
('DN00019', 'NA000004', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cincinnatus (curly-haired)
('DN00020', 'NA000005', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Severus (stern)
('DN00021', 'NA000007', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Brutus (heavy, dull)
('DN00022', 'NA000008', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cato (shrewd, wise)
('DN00023', 'NA000016', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Superbus (proud, arrogant)
('DN00024', 'NA000019', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Macerinus (thin, lean)
('DN00025', 'NA000022', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cornutus (horned)
('DN00026', 'NA000024', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Rutilus (reddish, golden-red)
('DN00027', 'NA000389', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Rullianus (from Rullus)
('DN00028', 'NA000390', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Verrucosus (warty)
('DN00029', 'NA000391', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Mus (mouse)

-- Mythological
('DN00030', 'NA000012', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Remus (legendary co-founder of Rome)
('DN00031', 'NA000013', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Romulus (legendary founder of Rome)
('DN00032', 'NA000036', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Romelius (derived from Roma/Romulus)
('DN00033', 'NA000023', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Iullus (associated with Iulus/Ascanius)
('DN00034', 'NA000395', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cupavo (from Virgil's Aeneid)
('DN00035', 'NA000396', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cycnus (swan, mythological)
('DN00036', 'NA000397', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Phaethon (shining one, mythological)
('DN00037', 'NA000408', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cybebe (sea nymph)
('DN00038', 'NA000409', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cymodocea (wave-receiver, sea nymph)
('DN00039', 'NA000410', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Paphus (Venus cult site)
('DN00040', 'NA000411', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Idalia (Venus cult site)
('DN00041', 'NA000412', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cythera (Venus cult site)
('DN00042', 'NA000413', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Asius (Trojan warrior)
('DN00043', 'NA000414', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Thymoetes (Trojan elder)
('DN00044', 'NA000415', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Assaracus (Trojan ancestor)
('DN00045', 'NA000416', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Castor (mythological twin)
('DN00046', 'NA000417', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Thymbus (Trojan warrior)
('DN00047', 'NA000418', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Clarus (Lycian warrior)
('DN00048', 'NA000419', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Thaemon (Lycian warrior)
('DN00049', 'NA000420', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Haemon (Lycian warrior)
('DN00050', 'NA000421', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Acmon (Lycian warrior)
('DN00051', 'NA000422', 'MT00011', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Oricia (mythological)

-- Compound Names (Greek)
('DN00052', 'NA000122', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Teisander (tisis/teino + aner)
('DN00053', 'NA000126', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Periander (peri + aner)
('DN00054', 'NA000130', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Peisiphilus (peitho + philos)
('DN00055', 'NA000132', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Nicander (nike + aner)
('DN00056', 'NA000133', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Nicomachus (nike + mache)
('DN00057', 'NA000135', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Alexander (alexo + aner)
('DN00058', 'NA000143', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Nicodemus (nike + demos)
('DN00059', 'NA000158', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Cassander (kassis + aner)
('DN00060', 'NA000159', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Lysander (lysis + aner)
('DN00061', 'NA000163', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Theodora (theos + doron)
('DN00062', 'NA000261', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Evander (eu + aner)
('DN00063', 'NA000346', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Baalhanno (Baal + hanno)

-- ===========================================================================
-- NEW BATCH: Philosopher/Poet Names (NA000426-NA000483)
-- ===========================================================================

-- Compound Names (18 entries)
('DN00064', 'NA000427', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀναξίμανδρος (Anaximander): anax + aner = lord of men
('DN00065', 'NA000429', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀριστοτέλης (Aristotle): aristos + telos = best purpose
('DN00066', 'NA000431', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ξενοκράτης (Xenocrates): xenos + kratos = foreign power
('DN00067', 'NA000432', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Κλεάνθης (Cleanthes): kleos + anthos = glory blooming
('DN00068', 'NA000433', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Χρύσιππος (Chrysippus): chrysos + hippos = golden horse
('DN00069', 'NA000434', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Σπεύσιππος (Speusippus): speudo + hippos = hastening horses
('DN00070', 'NA000436', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Θεόφραστος (Theophrastus): theos + phrazo = god-speaking
('DN00071', 'NA000437', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Πυθαγόρας (Pythagoras): Pytho + agora = Pythian speaker
('DN00072', 'NA000439', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Φιλόλαος (Philolaus): philos + laos = lover of people
('DN00073', 'NA000440', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀπολλόδωρος (Apollodorus): Apollo + doron = gift of Apollo
('DN00074', 'NA000453', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀρχίλοχος (Archilochus): arche + lochos = leader of ambush
('DN00075', 'NA000456', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Στησίχορος (Stesichorus): histemi + choros = establisher of choruses
('DN00076', 'NA000470', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Παναίτιος (Panaetius): pan + aitia = all-causing
('DN00077', 'NA000472', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Δικαίαρχος (Dicaearchus): dikaios + archos = just ruler
('DN00078', 'NA000473', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀριστόξενος (Aristoxenus): aristos + xenos = best guest
('DN00079', 'NA000474', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Κλέαρχος (Clearchus): kleos + archos = glorious ruler
('DN00080', 'NA000479', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἀρκεσίλαος (Arcesilaus): arkeo + laos = defender of people
('DN00081', 'NA000481', 'MT00005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Τηλεκλῆς (Telecles): tele + kleos = far-famed

-- Patronymic Names (2 entries)
('DN00082', 'NA000435', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ἡρακλείδης (Heracleides): Heracles + -ides = descendant of Heracles
('DN00083', 'NA000455', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Βακχυλίδης (Bacchylides): Bacchus + -ides = son of Bacchus

-- Theophoric Names (1 entry)
('DN00084', 'NA000471', 'MT00007', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Ποσειδώνιος (Posidonius): Poseidon + -onios = of Poseidon

('DN00085', 'NA000487', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Compound type
('DN00086', 'NA000488', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Diminutive type
('DN00087', 'NA000509', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Compound type
('DN00088', 'NA000510', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Compound type
('DN00089', 'NA000512', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Diminutive type
('DN00090', 'NA000514', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Theocritus: compound (theos + krites)
('DN00091', 'NA000515', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Callimachus: compound (kalos + mache)
('DN00092', 'NA000518', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Hippomenes: compound (hippos + menos)
('DN00093', 'NA000522', 'MT00007', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Galatea: theophoric (gala)
('DN00094', 'NA000525', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Meliboeus: compound (melon + bous)
('DN00095', 'NA000537', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Calliope: compound (kalos + ops)
('DN00096', 'NA000541', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Alcippe: compound (alke + hippos)
('DN00097', 'NA000484', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Compound type
('DN00098', 'NA000485', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Compound type
('DN00099', 'NA000486', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Compound type

-- Italian and Greek Geographic/Mythological Names (2025-11-16)
('DN00100', 'NA000596', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Silvius: diminutive from silva + -ius
('DN00101', 'NA000638', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Romulus: diminutive from Roma + -ulus
('DN00102', 'NA000641', 'MT00001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Faustulus: diminutive from faustus + -ulus
('DN00103', 'NA000636', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Evander: compound (eu + aner)
('DN00104', 'NA000606', 'MT00004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Hellanicus: compound (Hellen + -ikos suffix)
('DN00105', 'NA000550', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Sicelus: patronymic/eponymous ancestor
('DN00106', 'NA000551', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Siculus: patronymic/eponymous variant
('DN00107', 'NA000552', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Sicanus: patronymic/eponymous ancestor
('DN00108', 'NA000553', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Italus: patronymic/eponymous ancestor
('DN00109', 'NA000554', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Italos: patronymic/eponymous (Greek form)
('DN00110', 'NA000612', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Lydus: patronymic/eponymous ancestor
('DN00111', 'NA000611', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Tyrrhenus: patronymic/eponymous ancestor of Etruscans
('DN00112', 'NA000588', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Tubero: descriptive (swelling/protuberance)
('DN00113', 'NA000555', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Oenotrus: patronymic/eponymous founder
('DN00114', 'NA000556', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Pelasgos: patronymic/eponymous progenitor
('DN00115', 'NA000557', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Pelasgus: patronymic/eponymous (Latin form)
('DN00116', 'NA000631', 'MT00008', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Latinus: locative (of Latium)
('DN00117', 'NA000634', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Amata: descriptive (beloved)
('DN00118', 'NA000627', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Pomona: descriptive (from pomum - fruit)
('DN00119', 'NA000628', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Vertumnus: descriptive (from vertere - to turn)
('DN00120', 'NA000629', 'MT00010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Consus: descriptive (from condere - to store)
('DN00121', 'NA000591', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Umbrius: patronymic/ethnic (from Umbria)
('DN00122', 'NA000592', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ligurius: patronymic/ethnic (from Liguria)
('DN00123', 'NA000593', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), -- Ligurianus: patronymic/ethnic (from Liguria + -anus)
('DN00124', 'NA000660', 'MT00003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); -- Sabus: patronymic/eponymous ancestor