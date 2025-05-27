#!/bin/bash

# Rebrand BMAD-METHOD to Orchestrator
echo "Starting rebranding from BMAD-METHOD to Orchestrator..."

# Find all relevant files (excluding .git directory)
files=$(find . -type f \( -name "*.md" -o -name "*.txt" -o -name "*.js" -o -name "*.yml" -o -name "*.yaml" \) ! -path "./.git/*")

# Replace patterns
for file in $files; do
    if [ -f "$file" ]; then
        echo "Processing: $file"
        
        # Replace various BMAD patterns
        sed -i '' 's/BMAD-METHOD/ORCHESTRATOR-METHOD/g' "$file"
        sed -i '' 's/BMAD Method/Orchestrator Method/g' "$file"
        sed -i '' 's/BMad Method/Orchestrator Method/g' "$file"
        sed -i '' 's/BMAD method/Orchestrator method/g' "$file"
        sed -i '' 's/BMad method/Orchestrator method/g' "$file"
        sed -i '' 's/BMAD Agent/Orchestrator Agent/g' "$file"
        sed -i '' 's/BMad Agent/Orchestrator Agent/g' "$file"
        sed -i '' 's/BMAD Orchestrator/Orchestrator/g' "$file"
        sed -i '' 's/BMad Orchestrator/Orchestrator/g' "$file"
        sed -i '' 's/BMAD workflow/Orchestrator workflow/g' "$file"
        sed -i '' 's/BMad workflow/Orchestrator workflow/g' "$file"
        sed -i '' 's/BMAD Knowledge Base/Orchestrator Knowledge Base/g' "$file"
        sed -i '' 's/BMad Knowledge Base/Orchestrator Knowledge Base/g' "$file"
        sed -i '' 's/bmad-agent/orchestrator-agent/g' "$file"
        sed -i '' 's/bmad-kb/orchestrator-kb/g' "$file"
        sed -i '' 's/web-bmad-orchestrator/web-orchestrator/g' "$file"
        sed -i '' 's/ide-bmad-orchestrator/ide-orchestrator/g' "$file"
        
        # Replace standalone BMAD/BMad references (but be careful not to break things)
        sed -i '' 's/\bBMAD\b/ORCHESTRATOR/g' "$file"
        sed -i '' 's/\bBMad\b/Orchestrator/g' "$file"
        
        # Additional specific patterns that might have been missed
        sed -i '' 's/BMad /Orchestrator /g' "$file"
        sed -i '' 's/BMAD /ORCHESTRATOR /g' "$file"
        sed -i '' 's/bmad /orchestrator /g' "$file"
        sed -i '' 's/BMad-/Orchestrator-/g' "$file"
        sed -i '' 's/BMAD-/ORCHESTRATOR-/g' "$file"
        sed -i '' 's/bmad-/orchestrator-/g' "$file"
        sed -i '' 's/"BMad/"Orchestrator/g' "$file"
        sed -i '' 's/"BMAD/"ORCHESTRATOR/g' "$file"
        sed -i '' 's/"bmad/"orchestrator/g' "$file"
        sed -i '' "s/'BMad/'Orchestrator/g" "$file"
        sed -i '' "s/'BMAD/'ORCHESTRATOR/g" "$file"
        sed -i '' "s/'bmad/'orchestrator/g" "$file"
        
        # Special cases for specific contexts
        sed -i '' 's/Breakthrough Method of Agile (ai-driven) Development/AI Agent Orchestration Framework for Agile Development/g' "$file"
        sed -i '' 's/Thank you and enjoy - BMad!/Thank you and enjoy - Orchestrator!/g' "$file"
        sed -i '' 's/Copyright (c) 2025 Brian AKA BMad AKA Bmad Code/Copyright (c) 2025 Marius Mirzac/g' "$file"
    fi
done

echo "Rebranding complete!"
echo "Note: You may need to manually review some files for context-specific changes." 
