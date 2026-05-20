# Disk Archive
Floppies and other media imaged in the course of the data archiving hobby.

## Format
Disk images are in the format most used by emulators and imaging tools for that platform (```.D64``` for Commodore 64, ```.DMK``` for TRS-80, etc), as well as format-dedicated raw/nibble image formats where available (```.WOZ```, ```.G64```, etc).
If there is no image format for a platform, or I lack the tools to coerce a raw flux stream into a usable image format, zipped Secure Copy ```.SCP``` flux files will be uploaded.
For disks that use standard IBM sectors, usually I will upload ImageDisk ```.IMD``` images as they provide the best balance of compatibility, preservation of original disk layout and format, and compactness of size.

## Organization
Images are in directories by platform.
Each disk's contents will be in its own directory named according to the disk's label, with image files accompanied by file listings and extracted files wherever possible. 
Disks with titles in ```[brackets]``` have no label or volume title and are named according to their brand/physical appearance, EG ```[Nashua red]```
Extracted files will be in a subdirectory with the volume name, if the format supports volumes/disk names, otherwise just called ```Files```.
I like to preserve the original file formats, but will also convert to text where possible.
Eventually I will get around to uploading scanned pictures of the disks themselves. 

## The Future
I would really like there to be a universal standard archival format that can store metadata, disk data, and a cover image all in one file, similar to the way Adobe Digital Negative works for pictures. The Apple ][ community's WOZ format is absolutely brilliant, and the kind of thing I would like to bring to other systems...might look into creating that in my copious free time. The RIFF format spec supports this easily, even though it is targeted at AV media, since it allows arbitrary tags and a data chunk that has no inherent formatting information. It's also a published, non-proprietary spec, which I think is crucial for future data recovery. What I *really* need in my life is more projects.
