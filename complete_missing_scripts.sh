#!/bin/bash

# Config
GITHUB_USERNAME="eyobdegafe"
REPO_NAME="system_engineering-devops"

# Step into your working folder
cd ~/Documents || cd ~  # Adjust to where you keep your repo
mkdir -p $REPO_NAME/0x02-shell_redirections
cd $REPO_NAME/0x02-shell_redirections

# Only create missing files
declare -A files

files["0-hello_world"]='#!/bin/bash
echo "Hello, World"'

files["1-confused_smiley"]='#!/bin/bash
echo "\"(Ôo)'\''"'

files["2-hellofile"]='#!/bin/bash
cat /etc/passwd'

files["3-twofiles"]='#!/bin/bash
cat /etc/passwd /etc/hosts'

files["4-lastlines"]='#!/bin/bash
tail /etc/passwd'

files["5-firstlines"]='#!/bin/bash
head /etc/passwd'

files["8-cwd_state"]='#!/bin/bash
ls -la > ls_cwd_content'

files["9-duplicate_last_line"]='#!/bin/bash
tail -n 1 iacta >> iacta'

# Create only if not already there
for file in "${!files[@]}"; do
    if [[ ! -f "$file" ]]; then
        echo "${files[$file]}" > "$file"
        chmod +x "$file"
        echo "Created $file"
    else
        echo "Skipped $file (already exists)"
    fi
done

# Git commands
cd ..
git add .
git commit -m "Add missing scripts for shell redirection project"
git push origin main

echo "✅ All missing scripts added and pushed."
