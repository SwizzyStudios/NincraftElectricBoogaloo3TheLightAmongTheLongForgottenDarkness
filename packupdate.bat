for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" -updateApp
for /f "skip=1 eol=: delims=" %%F in ('dir /b /o-d ModPackDownloader*.jar') do @del "%%F"
for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" -manifest common/base/mods.json -folder common/base/mods -updateMods -updateForge -releaseType release
java -jar "%modpackdownloader%" -manifest client/base/mods.json -folder client/base/mods -updateMods -releaseType release