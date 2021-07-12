## Data management
Ludovic Dutoit, July 2021

### Description

This session covers the essential of data management for a project on NeSI. It starts with a bit of general thinking before moving into some [NeSI](https://www.nesi.org.nz/) specifics. 


## Good habits

* Always have your data in at least two places.
* Never edit your raw data.
* Use informative file names: `Filtered_data.txt`is meaningless on its own. `data_noMISSINGDATAremoved12lowqual.csv` is much better.
* Avoid proprietary formats
* Have a readme file
* Your methods are easily transportable, and should bring anyone from raw data to results. Put your efforts there, Try to see files as checkpoints, not at the center of your structure.
* Use version control (i.e. github.com)

## Tips and tricks for data management on NeSI


If you do not have access to NeSI yet, apply [here](https://www.nesi.org.nz/). Free, powerful, and maintained for you!


There are essentially 3 file systems on NeSI.

They are explained [here](https://support.nesi.org.nz/hc/en-gb/articles/360000177256-NeSI-File-Systems-and-Quotas).


How to check your usage?

```
nn_storage_quota # check your quotas, specific to NeSI
du -h # Show the size of every directory in the data structure.
du -h | grep -E "^[0-9]+G" # check all the directorues in the Gb range
```


That is all good and well. But we sometimes end up with huge quantity of small files, can we have an infinity of those? No, files are assiocated to metadata, an empty file still takes some space for metadata on the system. That space is referred to as inodes, and they can also reach a quota.

```
nn_storage_quota
echo "Inode usage for $(pwd)" ; for d in `find -maxdepth 1 -type d | cut -d\/ -f2 | grep -xv . | sort`; do c=$(find $d | wc -l) ; printf "$c\t\t- $d\n" ; done ; printf "Total: \t\t$(find $(pwd) | wc -l)\n" # This count the inodes
```

Nobackup is now being deleted every 120 days.



Backups

Where are those backups anyway?

Links





Not enough space? Ask nesi first, if it is not enough, you can get data on the HCS too.
