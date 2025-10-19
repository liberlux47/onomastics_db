-- Migration: Update gender constraint to use linguistically correct "neuter" instead of "neutral"
-- Date: October 19, 2025
-- Purpose: Align database schema with proper linguistic terminology for grammatical gender

-- Step 1: Drop the existing CHECK constraint
ALTER TABLE Names DROP CONSTRAINT IF EXISTS names_gender_check;

-- Step 2: Update any existing 'neutral' values to 'neuter' (if any exist)
UPDATE Names 
SET gender = 'neuter' 
WHERE gender = 'neutral';

-- Step 3: Add the corrected CHECK constraint with linguistically accurate terms
ALTER TABLE Names 
ADD CONSTRAINT names_gender_check 
CHECK (gender IN ('masculine', 'feminine', 'neuter', 'unisex'));

-- Verification query (optional - can be run to confirm migration)
-- SELECT gender, COUNT(*) as count 
-- FROM Names 
-- GROUP BY gender 
-- ORDER BY gender;