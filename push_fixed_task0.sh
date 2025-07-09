#!/bin/bash

# ✅ Create correct script for Task 0
echo -e "#!/bin/bash\npwd" > 0x00-shell_basics/0-current_working_directory

# ✅ Make the script executable
chmod +x 0x00-shell_basics/0-current_working_directory

# ✅ Stage and commit the change
git add 0x00-shell_basics/0-current_working_directory
git commit -m "Fix Task 0: Correct shebang and ensure two-line format"

# ✅ Push to both remotes
echo "Pushing to eyoborigin..."
git push eyoborigin main

echo "Pushing to kalkidanorigin..."
git push kalkidanorigin main

echo "✅ Task 0 fixed and pushed to both accounts."
