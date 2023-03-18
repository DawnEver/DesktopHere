# Desktop Here
## Usage
- `dhere [folderPath]`show folder as Desktop
- `dhere --help`or`dhere -h`show help
- `dhere --backup`or`dhere -b`backup current desktop
- `dhere --reset`or`dhere -r`reset desktop to a backup version
- `dhere --drop`or`dhere -d`drop current desktop
- `dhere --list`or`dhere -l`list your backups
- `dhere --show`or`dhere -s`show current desktop folder
## Attention
- Password is needed for your first usage.
- Machine will clear and create a new desktop after restart,so save your work in time.

    For me,I keep my initial desktop emtpty.
- Backup using `cp` and ***Desktop Here*** using `symbolic link`.
- Config files and desktop versions in ./.dhere.
- execute `install` again if the repo path is moved.
## Story
Are you tired of your messy desktop after a all-night developing?
Just like you,I beggan to miss the old days files  on the Desktop and wuthin a click no sooner than I cleared my Desktop.
Okay,I just hide the files instaed of sort them.
But sorting files is time-consuming and needed frequently(to me at least once a month).
For deep hate for seaching for workspace folder in finder,I developed **Desktop Here**.Any folder in you machine can be your desktop. 

## Todos
- gui

## Log
- 2023/3/18 fix bug and abandon `ln` in installation
- 2022/12/4 first version