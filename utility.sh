








#!/bin/bash


## Department File Organizer Utility Script ##
## Junior Systems Administrator Tool ##


echo "## Department File Organizer Starting ##"
echo "Running from: $(pwd)"

# Show current working directory
pwd

# Show current date and time
echo "Script started at: $(date)"


## STEP 1: Create directory structure #

echo ""
echo "[1] Creating directories..."

mkdir -p departments
mkdir -p backups
mkdir -p temp
mkdir -p reports

echo "Directories created: departments, backups, temp, reports"


# STEP 2: Create sample files #

echo ""
echo "[2] Creating sample department files..."

touch departments/employee_roster.txt
touch departments/budget_2026.txt
touch departments/server_inventory.txt

echo "Sample files created in departments folder."

# Write content into the files #
echo "Employee Roster - $(date)" > departments/employee_roster.txt
echo "Budget 2026 - $(date)" > departments/budget_2026.txt
echo "Server Inventory - $(date)" > departments/server_inventory.txt


# STEP 3: Backup department files #

echo ""
echo "[3] Backing up department folder to backups/..."

cp -r departments backups/departments_backup
cp -rv departments/employee_roster.txt backups/

echo "Backup complete."


# STEP 4: Move and rename a file #

echo ""
echo "[4] Renaming budget file..."

mv departments/budget_2026.txt departments/budget_2026_REVIEWED.txt

echo "Renamed: budget_2026.txt → budget_2026_REVIEWED.txt"


# STEP 5: Remove temporary files #

echo ""
echo "[5] Cleaning up temporary files..."

rm -rv temp/

echo "Temporary folder removed."


# STEP 6: List directory contents #

echo ""
echo "[6] Current directory structure:"
ls -al departments/
ls -al backups/


# STEP 7: Generate final report #

echo ""
echo "[7] Generating final report..."

echo "###################################" > reports/utility_report.txt
echo "MY SCRIPT REPORT" >> reports/utility_report.txt
echo "###################################" >> reports/utility_report.txt
echo "" >> reports/utility_report.txt
echo "Date and time I ran this: $(date)" >> reports/utility_report.txt
echo "Where I was: $(pwd)" >> reports/utility_report.txt

echo "" >> reports/utility_report.txt
echo "Folders I made:" >> reports/utility_report.txt
echo "  - departments" >> reports/utility_report.txt
echo "  - backups" >> reports/utility_report.txt
echo "  - temp (I deleted this one after)" >> reports/utility_report.txt
echo "  - reports" >> reports/utility_report.txt
echo "" >> reports/utility_report.txt
echo "Files I created:" >> reports/utility_report.txt
echo "  - employee_roster.txt" >> reports/utility_report.txt
echo "  - budget_2026.txt" >> reports/utility_report.txt
echo "  - server_inventory.txt" >> reports/utility_report.txt
echo "" >> reports/utility_report.txt
echo "Files I copied to backup folder:" >> reports/utility_report.txt
echo "  - departments folder" >> reports/utility_report.txt
echo "  - employee_roster.txt" >> reports/utility_report.txt
echo "" >> reports/utility_report.txt
echo "File I renamed:" >> reports/utility_report.txt
echo "  - budget_2026.txt is now budget_2026_REVIEWED.txt" >> reports/utility_report.txt
echo "" >> reports/utility_report.txt
echo "Stuff I deleted:" >> reports/utility_report.txt
echo "  - the temp folder" >> reports/utility_report.txt
echo "" >> reports/utility_report.txt
echo "Script is done!" >> reports/utility_report.txt
echo "###################################" >> reports/utility_report.txt

# Show who is running the script
echo ""
echo "Script executed by: $(whoami)"

# Show the machine name
echo "Hostname: $(hostname)"

# Count lines in the report
echo "Report line count:"
wc -l reports/utility_report.txt

# Display the final report
echo ""
echo "## FINAL REPORT ##"
cat reports/utility_report.txt













































































