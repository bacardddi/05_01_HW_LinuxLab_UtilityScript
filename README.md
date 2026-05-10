# 05_01_HW_LinuxLab_UtilityScript

## Workplace Scenario
I was given a task as a junior systems administrator where I had to write a bash script that helps organize files for different departments on a Linux server. Basically the script does all the manual work automatically like making folders, creating files, copying them to a backup, cleaning up files we dont need anymore, and writing a report of everything that happened.


## What the Script Does
When you run the script it goes through a bunch of steps on its own without you having to do anything manually. First it makes the folders we need to store the department files and backups. Then it creates some sample files and puts some text in them. After that it copies everything over to a backup folder so we dont lose anything. It also renames one of the files to show it was reviewed. Then it deletes the temp folder since we dont need it anymore. At the end it counts the lines in the report, shows who ran the script and on what machine, and prints out a full report of everything the script did with the date and time it ran.


## Commands Used

| Command | Definition | Why I Used It |
|---|---|---|
| `echo` | Prints text to the terminal or writes to a file | Status messages and writing file content |
| `pwd` | Prints the current working directory | Show where the script is running from |
| `date` | Displays current date and time | Timestamp the report and log files |
| `mkdir -p` | Creates directories, including parent folders if needed | Build the department folder structure |
| `touch` | Creates empty files | Generate sample department files |
| `cp -r` | Copies directories recursively | Back up entire department folders |
| `cp -rv` | Copies recursively and shows each file copied | Verbose backup with confirmation |
| `mv` | Moves or renames files | Rename reviewed invoice file |
| `rm -rv` | Removes files/folders recursively with verbose output | Delete the temp folder and confirm |
| `ls -al` | Lists all files with details including hidden files | Verify directory contents after operations |
| `cat` | Displays file contents | Write and display the final report |
| `chmod +x` | Makes a file executable | Required to run the script directly |
| `whoami` | Shows username of whoever logged in and running script |Shows the user and to have a record of who ran the script |
| `hostname`| Shows name of server or computer the script is running on  | To prove what computer is running the script helpful with multi servers |
| `wc -l`| Counts the number of lines in a file the -l flag specifically tells it to count lines only | Used to count lines of the final report |

 