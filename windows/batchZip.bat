REM Batch compression files separately in Windows with 7zip by Rafael Cerrejon
for %%X in (*) do "C:\Program Files\7-Zip\7z.exe" a -tzip "%%X.zip" "%%X"
