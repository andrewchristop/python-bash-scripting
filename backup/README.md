# Backup Script

Backs up subdirectories of a UNIX-like file system. Backup targets are user-determinant. Current configuration has the script backup `home` and `etc`

Feel free to make edits to backup.conf to add, remove, or edit backup targets

To use the script make sure to have backup and backup.conf locally

Make sure to give execute permission to the script by executing `chmod +x backup`

The script can be run by executing `./backup [/path/to/backup.conf]`

*It's completely fine to have* `backup.conf` *in a separate directory*

The script can be modified to be executed by a cron job to be run periodically.

Backup script is written by Christopher Andrew Budiharto

All credits for the configuration file go to Professors Baijian Yang and Phillip Rawles respectively
