#!/bin/bash

# Kiro Pro Smart Installer Script
# Version: 1.0.0
# Authors: Manus AI, Mohammed Murad Al-Qabal

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}--- Kiro Pro Smart Installer ---${NC}"

# 1. Check if .kiro directory already exists
if [ -d ".kiro" ]; then
    echo -e "${RED}[WARNING] .kiro directory already exists in this project.${NC}"
    read -p "Do you want to overwrite it? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${BLUE}Installation cancelled.${NC}"
        exit 1
    fi
fi

# 2. Download Kiro Pro Template files (Assuming the script is run from the project root)
# In a real scenario, this would curl the files from GitHub.
# For now, we'll assume the files are available in the template directory.
TEMPLATE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

echo -e "${BLUE}Initializing Kiro Pro structure...${NC}"
mkdir -p .kiro/steering .kiro/hooks .kiro/prompts

# 3. Copy core steering documents and hooks
cp -r "$TEMPLATE_DIR/.kiro/steering/"* .kiro/steering/
cp -r "$TEMPLATE_DIR/.kiro/hooks/"* .kiro/hooks/
cp -r "$TEMPLATE_DIR/.kiro/prompts/"* .kiro/prompts/

# 4. Customization Prompt
echo -e "${BLUE}Customizing your Product Constitution...${NC}"
read -p "Enter your Project Name: " PROJECT_NAME
read -p "Enter your Project Description: " PROJECT_DESC

# Use sed to update the product.md file (handling different sed versions)
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' "s/title: Product Constitution/title: $PROJECT_NAME Constitution/" .kiro/steering/product.md
    sed -i '' "s/description: Defines the core purpose/description: $PROJECT_DESC/" .kiro/steering/product.md
else
    sed -i "s/title: Product Constitution/title: $PROJECT_NAME Constitution/" .kiro/steering/product.md
    sed -i "s/description: Defines the core purpose/description: $PROJECT_DESC/" .kiro/steering/product.md
fi

# 5. Setup Git Hooks (Optional but recommended)
echo -e "${BLUE}Setting up Git Hooks integration...${NC}"
if [ -d ".git" ]; then
    # Create a pre-commit hook that runs Kiro hooks
    cat <<EOF > .git/hooks/pre-commit
#!/bin/bash
# Run Kiro Pro Hooks
for hook in .kiro/hooks/*.kiro.hook; do
    if [ -f "\$hook" ]; then
        bash "\$hook" || exit 1
    fi
done
EOF
    chmod +x .git/hooks/pre-commit
    echo -e "${GREEN}[SUCCESS] Git pre-commit hook installed.${NC}"
else
    echo -e "${RED}[INFO] Git repository not found. Skipping Git hook installation.${NC}"
fi

echo -e "${GREEN}--- Kiro Pro Installation Complete! ---${NC}"
echo -e "Next steps:"
echo -e "1. Review and update .kiro/steering/tech.md for your stack."
echo -e "2. Review and update .kiro/steering/architectural-principles.md."
echo -e "3. Start your elite engineering journey with Kiro Pro!"
