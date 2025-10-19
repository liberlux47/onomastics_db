-- Insert Latin Name Types
-- These represent the four component types of Roman names with their semantic and structural characteristics

INSERT INTO LatinNameTypes (type_id, type_label, description, typical_usage, is_hereditary, is_personal, is_familial, is_honorific, created_at, last_modified_on) VALUES

('LNT0001', 'Praenomen', 'Personal name given at birth, typically indicating birth order or family tradition. Limited set of traditional names used across Roman society.', 'Given at birth during naming ceremony (dies lustricus). Abbreviated in formal writing (e.g., M. for Marcus, L. for Lucius).', FALSE, TRUE, FALSE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('LNT0002', 'Nomen', 'Family or clan name (gens) indicating membership in a particular Roman family group. Hereditary and indicates social status and lineage.', 'Inherited patrilineally, indicates gens membership. Essential for legal identity and social standing in Roman society.', TRUE, FALSE, TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('LNT0003', 'Cognomen', 'Branch name within a gens, originally nicknames that became hereditary. Distinguished different branches of the same family.', 'Often descriptive of physical traits, achievements, or characteristics. Could become hereditary within family branches.', TRUE, FALSE, TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

('LNT0004', 'Agnomen', 'Additional honorary name acquired through personal achievement, military victory, or significant deed. Not typically hereditary.', 'Granted for specific accomplishments, military conquests, or civic service. Examples: Africanus, Germanicus, Augustus.', FALSE, FALSE, FALSE, TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);