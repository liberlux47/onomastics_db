# Semantic Domain Consolidation Mapping

**From 82 domains to 12 core domains**

This document maps all existing semantic domains to the new consolidated set for the Onomastics database.

## Proposed 12 Core Semantic Domains

1. **Historical** - Leaders, rulers, political figures, reformers
2. **Military** - Warriors, generals, strategic leaders, martial aspects  
3. **Mythological** - Legendary figures, deities, titans, divine beings
4. **Philosophical** - Thinkers, scholars, intellectual pursuits
5. **Literary** - Poets, writers, orators, artistic achievements
6. **Geographic** - Place-based names, ethnic origins, locations
7. **Physical** - Appearance, bodily characteristics, physical traits
8. **Familial** - Family relationships, lineage, ancestry
9. **Virtue** - Character traits, moral qualities, honors
10. **Religious** - Spiritual aspects, priestly functions, sacred elements
11. **Political** - Governance, civic roles, democratic ideals
12. **Personal** - Individual identity, birth circumstances, personal names

## Domain Mapping Details

### Historical (31 mappings)
The following domains map to **Historical**:
- Academic → Historical
- Aristocratic → Historical  
- Democratic → Historical
- Dynasty → Historical
- Dynastic → Historical
- Economic → Historical
- Golden → Historical
- Historical → Historical *(keep)*
- Imperial → Historical
- Leadership → Historical
- Legal → Historical
- Royalty → Historical
- Scholarly → Historical
- Succession → Historical
- Tyrannical → Historical
- Conquest → Historical
- Foundational → Historical
- Resilient → Historical
- Resistance → Historical
- Steadfast → Historical
- Diplomatic → Historical
- Order → Historical
- Patrician → Historical
- Ceremonial → Historical
- Commerce → Historical
- Precious → Historical
- Temporal → Historical
- Wise → Historical
- Liberation → Historical
- Fraternal → Historical
- Generous → Historical

### Military (12 mappings)
The following domains map to **Military**:
- Military → Military *(keep)*
- War → Military
- Heroic → Military
- Equestrian → Military
- Maritime → Military
- Strength → Military
- Cunning → Military
- Tragic → Military *(in heroic context)*
- Romantic → Military *(in heroic context)*
- Beauty → Military *(Helen of Troy context)*
- Legendary → Military *(warrior legends)*
- Honorific → Military *(military honors)*

### Mythological (9 mappings)
The following domains map to **Mythological**:
- Mythological → Mythological *(keep)*
- Mythology → Mythological
- Titan → Mythological
- Divine → Mythological
- Magical → Mythological
- Concealment → Mythological
- Mystical → Mythological
- Fortune → Mythological
- Astronomical → Mythological *(divine astronomy)*

### Philosophical (7 mappings)
The following domains map to **Philosophical**:
- Philosophical → Philosophical *(keep)*
- Intellectual → Philosophical
- Ethical → Philosophical
- Atomic → Philosophical
- Mathematical → Philosophical
- Medical → Philosophical *(ancient medicine was philosophical)*
- Longevity → Philosophical

### Literary (4 mappings)
The following domains map to **Literary**:
- Literary → Literary *(keep)*
- Comic → Literary
- Floral → Literary *(poetic imagery)*
- Light → Literary *(metaphorical)*

### Geographic (5 mappings)
The following domains map to **Geographic**:
- Geographic → Geographic *(keep)*
- Ethnic → Geographic
- Estate → Geographic
- Nature → Geographic
- Seasonal → Geographic

### Physical (8 mappings)
The following domains map to **Physical**:
- Physical → Physical *(keep)*
- Character → Physical *(physical manifestation of character)*
- Color → Physical
- Birth → Physical
- Temperament → Physical
- Will → Physical
- Luxury → Physical *(physical comfort)*
- Agricultural → Physical *(earth-based)*

### Familial (5 mappings)
The following domains map to **Familial**:
- Family → Familial
- Familial → Familial *(keep)*
- Patronymic → Familial
- Numerical → Familial *(birth order)*
- Rivalry → Familial *(family competition)*

### Virtue (1 mapping)
The following domains map to **Virtue**:
- Virtue → Virtue *(keep)*

### Religious (1 mapping)
The following domains map to **Religious**:
- Religious → Religious *(keep)*

### Political (1 mapping)
The following domains map to **Political**:
- Political → Political *(keep)*

### Personal (2 mappings)
The following domains map to **Personal**:
- Personal → Personal *(keep)*
- Marriage → Personal *(life events)*

## SQL Update Script

To apply these consolidations to an existing database, use the following SQL commands:

```sql
-- Consolidate to Historical
UPDATE CanonicalNames SET semantic_domain = 'Historical' WHERE semantic_domain IN (
    'Academic', 'Aristocratic', 'Democratic', 'Dynasty', 'Dynastic', 'Economic', 
    'Golden', 'Imperial', 'Leadership', 'Legal', 'Royalty', 'Scholarly', 
    'Succession', 'Tyrannical', 'Conquest', 'Foundational', 'Resilient', 
    'Resistance', 'Steadfast', 'Diplomatic', 'Order', 'Patrician', 
    'Ceremonial', 'Commerce', 'Precious', 'Temporal', 'Wise', 'Liberation', 
    'Fraternal', 'Generous'
);

-- Consolidate to Military
UPDATE CanonicalNames SET semantic_domain = 'Military' WHERE semantic_domain IN (
    'War', 'Heroic', 'Equestrian', 'Maritime', 'Strength', 'Cunning', 
    'Tragic', 'Romantic', 'Beauty', 'Legendary', 'Honorific'
);

-- Consolidate to Mythological
UPDATE CanonicalNames SET semantic_domain = 'Mythological' WHERE semantic_domain IN (
    'Mythology', 'Titan', 'Divine', 'Magical', 'Concealment', 'Mystical', 
    'Fortune', 'Astronomical'
);

-- Consolidate to Philosophical
UPDATE CanonicalNames SET semantic_domain = 'Philosophical' WHERE semantic_domain IN (
    'Intellectual', 'Ethical', 'Atomic', 'Mathematical', 'Medical', 'Longevity'
);

-- Consolidate to Literary
UPDATE CanonicalNames SET semantic_domain = 'Literary' WHERE semantic_domain IN (
    'Comic', 'Floral', 'Light'
);

-- Consolidate to Geographic
UPDATE CanonicalNames SET semantic_domain = 'Geographic' WHERE semantic_domain IN (
    'Ethnic', 'Estate', 'Nature', 'Seasonal'
);

-- Consolidate to Physical
UPDATE CanonicalNames SET semantic_domain = 'Physical' WHERE semantic_domain IN (
    'Character', 'Color', 'Birth', 'Temperament', 'Will', 'Luxury', 'Agricultural'
);

-- Consolidate to Familial
UPDATE CanonicalNames SET semantic_domain = 'Familial' WHERE semantic_domain IN (
    'Family', 'Patronymic', 'Numerical', 'Rivalry'
);

-- Consolidate to Personal
UPDATE CanonicalNames SET semantic_domain = 'Personal' WHERE semantic_domain IN (
    'Marriage'
);
```

## Final Distribution

After consolidation, the semantic domains are distributed as follows:

| Domain | Count | Percentage |
|--------|-------|------------|
| Historical | 40 | 23.8% |
| Physical | 28 | 16.7% |
| Military | 22 | 13.1% |
| Mythological | 18 | 10.7% |
| Geographic | 17 | 10.1% |
| Familial | 15 | 8.9% |
| Personal | 9 | 5.4% |
| Philosophical | 7 | 4.2% |
| Literary | 4 | 2.4% |
| Political | 3 | 1.8% |
| Religious | 2 | 1.2% |
| Virtue | 2 | 1.2% |

**Total: 167 canonical names across 12 semantic domains**

## Unchanged Domains

The following domains remain unchanged in the consolidation:
- Historical
- Military  
- Mythological
- Philosophical
- Literary
- Geographic
- Physical
- Familial
- Virtue
- Religious
- Political
- Personal