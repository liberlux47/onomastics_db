SELECT *
FROM information_schema.columns
WHERE table_schema = 'public'  -- or your specific schema
  AND table_name = 'your_table_name';
