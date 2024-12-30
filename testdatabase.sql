/*Update alamat mahasiswa dengan NIM ‘123456’ menjadi ‘Jl. Raya No.5’.*/
UPDATE mahasiswa SET alamat = 'Jl. Raya No. 5' 
WHERE nim = 123456

/*Tampilkan NIM, nama, dan jurusan dari mahasiswa yang memiliki jurusan ‘Teknik
Informatika’, serta tampilkan juga nama dosen pembimbingnya.*/
SELECT 
    mahasiswa.nim,
    mahasiswa.nama,
    mahasiswa.jurusan,
    matakuliah.dosenpengajar
FROM
    mahasiswa
INNER JOIN
    matakuliah ON mahasiswa.nim = matakuliah.nim
WHERE   mahasiswa.jurusan = 'Teknik Informatika';


/*Tampilkan 5 nama mahasiswa dengan umur tertua*/
SELECT * FROM mahasiswa
ORDER BY umur DESC
LIMIT 5


/*Tampilkan nama mahasiswa, mata kuliah yang diambil, dan nilai yang diperoleh
untuk setiap mata kuliah. Hanya tampilkan data mahasiswa yang memiliki nilai lebih
bagus dari 70.*/
SELECT 
    mahasiswa.nama,
    matakuliah.matkul,
    matakuliah.nilai
FROM
    mahasiswa
INNER JOIN
    matakuliah ON mahasiswa.nim = matakuliah.nim
WHERE
    matakuliah.nilai > 70;



