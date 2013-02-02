@echo off
ECHO ----------------------------------------
echo Creating Build Folder
rmdir BUILD /S /Q
md BUILD\skin.pm3.hd-pvr\media\

Echo .svn>exclude.txt
Echo Thumbs.db>>exclude.txt
Echo Desktop.ini>>exclude.txt
Echo dsstdfx.bin>>exclude.txt
Echo exclude.txt>>exclude.txt

ECHO ----------------------------------------
ECHO Creating XBT Files...
START /B /WAIT ..\..\TexturePacker\TexturePacker -dupecheck -input media -output BUILD\skin.pm3.hd-pvr\media\Textures.xbt
START /B /WAIT ..\..\TexturePacker\TexturePacker -dupecheck -input themes\Old_School -output BUILD\skin.pm3.hd\media\Old_School.xbt

ECHO ----------------------------------------
ECHO XBT Texture Files Created...
ECHO Building Skin Directory...
xcopy "720p" "BUILD\skin.pm3.hd-pvr\720p" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "fonts" "BUILD\skin.pm3.hd-pvr\fonts" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "backgrounds" "BUILD\skin.pm3.hd-pvr\backgrounds" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "sounds\*.*" "BUILD\skin.pm3.hd-pvr\sounds\" /Q /I /Y /EXCLUDE:exclude.txt
xcopy "colors\*.*" "BUILD\skin.pm3.hd-pvr\colors\" /Q /I /Y /EXCLUDE:exclude.txt
xcopy "language" "BUILD\skin.pm3.hd-pvr\language" /E /Q /I /Y /EXCLUDE:exclude.txt

del exclude.txt

copy *.xml "BUILD\skin.pm3.hd-pvr\"
copy *.txt "BUILD\skin.pm3.hd-pvr\"
copy icon.png "BUILD\skin.pm3.hd-pvr\"
pause