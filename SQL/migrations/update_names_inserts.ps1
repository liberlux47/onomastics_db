-- Script to update NamesInserts.sql with romanization_rule_id
-- This script provides sed-like replacement commands for bulk updating

-- For PowerShell (Windows):
-- Replace script_id values with romanization_rule_id included

# Backup the original file first
Copy-Item "C:\Users\Lucas\source\repos\onomastics\SQL\INSERT\NamesInserts.sql" `
          "C:\Users\Lucas\source\repos\onomastics\SQL\INSERT\NamesInserts.sql.backup"

# Read the content
$content = Get-Content "C:\Users\Lucas\source\repos\onomastics\SQL\INSERT\NamesInserts.sql" -Raw

# Replace Latin names (SC00001) - Add RR00001 before SC00001
$content = $content -replace ", 'SC00001', CURRENT_TIMESTAMP", ", 'RR00001', 'SC00001', CURRENT_TIMESTAMP"

# Replace Greek names (SC00002) - Add RR00004 before SC00002
$content = $content -replace ", 'SC00002', CURRENT_TIMESTAMP", ", 'RR00004', 'SC00002', CURRENT_TIMESTAMP"

# Replace Phoenician names (SC00004) - Add RR00010 before SC00004
$content = $content -replace ", 'SC00004', CURRENT_TIMESTAMP", ", 'RR00010', 'SC00004', CURRENT_TIMESTAMP"

# Save the updated content
Set-Content "C:\Users\Lucas\source\repos\onomastics\SQL\INSERT\NamesInserts.sql" -Value $content

Write-Host "NamesInserts.sql has been updated with romanization_rule_id values"
Write-Host "Backup saved as NamesInserts.sql.backup"
