
mysqldump -h127.0.0.1 -uroot -v -proot --databases General | bzip -z1 > "D:\Rajeesh\VS-GST\Run\backup\VSSettings.Bak"
mysqldump -h127.0.0.1 -uroot -v -proot --databases GCOMP1_21 | bzip -z1 > "D:\Rajeesh\VS-GST\Run\backup\VSBackup02Dec2021.Bak"