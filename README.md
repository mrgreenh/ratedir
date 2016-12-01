- Copy it in your /usr/local/bin folder, call it 'ratedir'
- Navigate to a folder where you have either .jpg or .cr2 files or both
- type 'ratedir 3': this will take all the files with EXIF 'Rating' >= 3 and split them in folders
- it will place all unrated files in a 'discarded' folder and delete all discarded .cr2 files (I assume you have both a .jpg and a .cr2 pic for every shot)
- it won't move .jpeg files with a rating smaller than 3, but it will delete all the .cr2
- if you want, you can then type 'ratedir 1' to organize all lower-rated files in folders, but at least you will have saved some space deleting those .cr2
- of course you can do this selecting any rating, '3' was an example

You need to have the exiftool utility installed. http://www.sno.phy.queensu.ca/~phil/exiftool/

I use it with a Canon EOS 600D, it works for this particular configuration.
