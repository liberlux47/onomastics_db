-- Core Entity Table: Names
CREATE TABLE Names (
    name_id VARCHAR(8) PRIMARY KEY,
    name_text VARCHAR(30) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('masculine', 'feminine', 'neuter', 'unisex')),
    is_canonical BOOLEAN NOT NULL,
    is_derived BOOLEAN NOT NULL,
    etymology TEXT, -- Store markdown directly
    original_script TEXT,
    romanized_form TEXT,
    romanization_rule_id VARCHAR(8),
    script_id VARCHAR(7),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_script_id_names FOREIGN KEY (script_id)
        REFERENCES Scripts(script_id)
        ON DELETE SET NULL,
    CONSTRAINT fk_romanization_rule_id FOREIGN KEY (romanization_rule_id)
        REFERENCES RomanizationRules(rule_id)
        ON DELETE SET NULL
);

-- Composite Construction Table: ComplexNames
CREATE TABLE ComplexNames (
    complex_name_id VARCHAR(8) PRIMARY KEY,
    derived_name_id VARCHAR(8) NOT NULL,
    prefix VARCHAR(20),
    suffix VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_derived_name_id FOREIGN KEY (derived_name_id)
        REFERENCES DerivedNames(derived_name_id)
        ON DELETE CASCADE
);

-- Junction Table: ComplexNameRoots
CREATE TABLE ComplexNameRoots (
    complex_name_id VARCHAR(8) NOT NULL,
    root_id VARCHAR(8) NOT NULL,
    PRIMARY KEY (complex_name_id, root_id),
    CONSTRAINT fk_complex_name_id FOREIGN KEY (complex_name_id)
        REFERENCES ComplexNames(complex_name_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_root_id FOREIGN KEY (root_id)
        REFERENCES NameRoots(root_id)
        ON DELETE CASCADE
);

-- Semantic Grouping Table: CanonicalNames
CREATE TABLE CanonicalNames (
    canonical_name_id VARCHAR(8) PRIMARY KEY,
    name_id VARCHAR(8) NOT NULL,
    semantic_domain VARCHAR(30),
    is_active BOOLEAN DEFAULT TRUE,
    source_reference TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_name_id FOREIGN KEY (name_id)
        REFERENCES Names(name_id)
        ON DELETE CASCADE
);

-- Reference Table: DerivedNames
CREATE TABLE DerivedNames (
    derived_name_id VARCHAR(8) PRIMARY KEY,
    name_id VARCHAR(8),
    type VARCHAR(7) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_name_id FOREIGN KEY (name_id)
        REFERENCES Names(name_id)
        ON DELETE SET NULL,
    CONSTRAINT fk_morphology_type FOREIGN KEY (type)
        REFERENCES MorphologyTypes(morphology_type_id)
        ON DELETE SET NULL
);

-- Reference Table: LanguageFamilies
CREATE TABLE LanguageFamilies (
    family_id VARCHAR(7) PRIMARY KEY,
    family_name VARCHAR(30) NOT NULL,
    family_description TEXT,
    is_proto_family BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Reference Table: Languages
CREATE TABLE Languages (
    lang_id VARCHAR(7) PRIMARY KEY,
    lang_name VARCHAR(20) NOT NULL UNIQUE,
    parent_lang_id VARCHAR(7),
    family_id VARCHAR(7),
    is_extinct BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_parent_lang_id FOREIGN KEY (parent_lang_id)
        REFERENCES Languages(lang_id)
        ON DELETE SET NULL,
    CONSTRAINT fk_family_id FOREIGN KEY (family_id)
        REFERENCES LanguageFamilies(family_id)
        ON DELETE SET NULL
);

--- Reference Table: Morphology Types
CREATE TABLE MorphologyTypes (
    morphology_type_id VARCHAR(7) PRIMARY KEY,
    label VARCHAR(30) NOT NULL CHECK (
        label IN (
            'Diminutive',
            'Augmentative',
            'Patronymic',
            'Matronymic',
            'Compound',
            'Honorific',
            'Theophoric',
            'Locative',
            'Occupational',
            'Descriptive',
            'Mythological',
            'Invented'
        )
    ),
    description TEXT,
    is_prefix_based BOOLEAN,
    is_suffix_based BOOLEAN,
    is_root_transform BOOLEAN,
    is_semantic BOOLEAN,
    is_historical BOOLEAN,
    is_productive BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Junction Table: NameLanguages
CREATE TABLE NameLanguages (
    name_id VARCHAR(8) NOT NULL,
    lang_id VARCHAR(7) NOT NULL,
    PRIMARY KEY (name_id, lang_id),
    CONSTRAINT fk_name_id FOREIGN KEY (name_id)
        REFERENCES Names(name_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_lang_id FOREIGN KEY (lang_id)
        REFERENCES Languages(lang_id)
        ON DELETE CASCADE
);

-- Junction Table: NameLanguageUsages
CREATE TABLE NameLanguageUsages (
    lang_id VARCHAR(7) NOT NULL,
    name_id VARCHAR(8) NOT NULL,
    usage_type_id VARCHAR(7),
    region VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (lang_id, name_id, usage_type_id),
    CONSTRAINT fk_lang_id FOREIGN KEY (lang_id)
        REFERENCES Languages(lang_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_name_id FOREIGN KEY (name_id)
        REFERENCES Names(name_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_usage_type_id FOREIGN KEY (usage_type_id)
        REFERENCES UsageTypes(usage_type_id)
        ON DELETE SET NULL
);

-- Semantic Annotation Table: NameMeanings
CREATE TABLE NameMeanings (
    meaning_id VARCHAR(8) PRIMARY KEY,
    name_id VARCHAR(8) NOT NULL,
    meaning_text TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_name_id FOREIGN KEY (name_id)
        REFERENCES Names(name_id)
        ON DELETE CASCADE
);

-- Reference Table: NameRoots
CREATE TABLE NameRoots (
    root_id VARCHAR(8) PRIMARY KEY,
    root_text VARCHAR(30) NOT NULL,
    variant_of_id VARCHAR(8),
    variant_type VARCHAR(30),
    original_script TEXT,
    romanized_form TEXT,
    script_id VARCHAR(7),
    notes TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    source_reference TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_variant_of_id FOREIGN KEY (variant_of_id)
        REFERENCES NameRoots(root_id)
        ON DELETE SET NULL,
    CONSTRAINT fk_script_id_roots FOREIGN KEY (script_id)
        REFERENCES Scripts(script_id)
        ON DELETE SET NULL
);

-- Reference Table: RomanizationRules
CREATE TABLE RomanizationRules (
    rule_id VARCHAR(8) PRIMARY KEY,
    script_id VARCHAR(7),
    standard_name VARCHAR(50) NOT NULL,
    description TEXT,
    example_native TEXT,
    example_romanized TEXT,
    phoneme_notes TEXT,
    is_phonetic BOOLEAN,
    is_academic BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_script_id FOREIGN KEY (script_id)
        REFERENCES Scripts(script_id)
        ON DELETE CASCADE
);

-- Reference Table: Scripts
CREATE TABLE Scripts (
    script_id VARCHAR(7) PRIMARY KEY,
    script_name VARCHAR(30) NOT NULL,
    writing_system VARCHAR(30),
    is_right_to_left BOOLEAN,
    writing_orientation VARCHAR(15) CHECK (
        writing_orientation IN ('horizontal', 'vertical', 'both')
    ),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Reference Table: ScriptRegions
CREATE TABLE ScriptRegions (
    region_id VARCHAR(8) PRIMARY KEY,
    script_id VARCHAR(7) NOT NULL,
    region_name TEXT NOT NULL,
    is_primary_region BOOLEAN DEFAULT FALSE,
    historical_period VARCHAR(50),
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_script_id_regions FOREIGN KEY (script_id)
        REFERENCES Scripts(script_id)
        ON DELETE CASCADE
);

-- Reference Table: UnicodeRanges
CREATE TABLE UnicodeRanges (
    unicode_range_id VARCHAR(8) PRIMARY KEY,
    script_id VARCHAR(7) NOT NULL,
    block_name VARCHAR(50) NOT NULL,
    start_code VARCHAR(10) NOT NULL,
    end_code VARCHAR(10) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_script_id_unicode FOREIGN KEY (script_id)
        REFERENCES Scripts(script_id)
        ON DELETE CASCADE
);

-- Reference Table: UsageTypes
CREATE TABLE UsageTypes (
    usage_type_id VARCHAR(7) PRIMARY KEY,
    usage_label VARCHAR(30) NOT NULL,
    usage_description TEXT,
    is_symbolic BOOLEAN,
    is_temporal BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Reference Table: RomanizationRuleApplications
CREATE TABLE RomanizationRuleApplications (
    application_id VARCHAR(8) PRIMARY KEY,
    rule_id VARCHAR(8) NOT NULL,
    application_context VARCHAR(50) NOT NULL,
    context_description TEXT,
    target_field VARCHAR(50),
    is_primary_standard BOOLEAN DEFAULT FALSE,
    priority_order INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_rule_id_applications FOREIGN KEY (rule_id)
        REFERENCES RomanizationRules(rule_id)
        ON DELETE CASCADE
);

-- Cultural Specialized Table: LatinNames
CREATE TABLE LatinNames (
    latin_name_id VARCHAR(8) PRIMARY KEY,
    name_id VARCHAR(8) NOT NULL,
    type_id VARCHAR(7) NOT NULL,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT fk_name_id_latin FOREIGN KEY (name_id)
        REFERENCES Names(name_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_type_id_latin_names FOREIGN KEY (type_id)
        REFERENCES LatinNameTypes(type_id)
        ON DELETE CASCADE
);

-- Reference Table: LatinNameTypes
CREATE TABLE LatinNameTypes (
    type_id VARCHAR(7) PRIMARY KEY,
    type_label VARCHAR(20) NOT NULL CHECK (
        type_label IN ('Praenomen', 'Nomen', 'Cognomen', 'Agnomen')
    ),
    description TEXT,
    typical_usage TEXT,
    is_hereditary BOOLEAN,
    is_personal BOOLEAN,
    is_familial BOOLEAN,
    is_honorific BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);