-- Migration: Add Romanization Rule Tracking
-- Description: Adds romanization_rule_id to Names table and creates RomanizationRuleApplications table
-- Date: 2025-10-29
-- Version: 002

-- Step 1: Add new column to Names table
ALTER TABLE Names
ADD COLUMN romanization_rule_id VARCHAR(8);

-- Step 2: Add foreign key constraint
ALTER TABLE Names
ADD CONSTRAINT fk_romanization_rule_id 
    FOREIGN KEY (romanization_rule_id)
    REFERENCES RomanizationRules(rule_id)
    ON DELETE SET NULL;

-- Step 3: Create RomanizationRuleApplications table
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

-- Step 4: Populate romanization_rule_id for existing names based on script_id
-- Latin names (SC00001) use Classical Latin Standard
UPDATE Names
SET romanization_rule_id = 'RR00001'
WHERE script_id = 'SC00001';

-- Greek names (SC00002) use Ancient Greek (Classical) Standard
UPDATE Names
SET romanization_rule_id = 'RR00004'
WHERE script_id = 'SC00002';

-- Phoenician names (SC00004) use Punic Conventional Standard for romanized_form
UPDATE Names
SET romanization_rule_id = 'RR00010'
WHERE script_id = 'SC00004';

-- Step 5: Add comment to the column
COMMENT ON COLUMN Names.romanization_rule_id IS 'Reference to the romanization standard used for the romanized_form field';

-- Rollback script (commented out for safety):
-- ALTER TABLE Names DROP CONSTRAINT fk_romanization_rule_id;
-- ALTER TABLE Names DROP COLUMN romanization_rule_id;
-- DROP TABLE RomanizationRuleApplications;
