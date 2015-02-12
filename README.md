# scripts
Random various scripts.

## ruby/apod_download.rb
This script downloads the current APOD (astronomy picture of the day). There are a lot of scripts that download the whole multi-gigabyte archive, but I wanted something that would just download today's picture. 

Script takes one command line argument: the directory where the picture should be placed. If that's missing, the file is saved to the current directory.

Usage: ruby apod_download.rb /path/to/save/file/

Requires: nokogiri.


