# DATA SAMPLE

## Table of Contents

- [Address](#address)
- [Customer](#customer)
- [Agency](#agency)
- [Admin](#admin)
- [Airline](#airline)
- [Flight](#flight)
- [Class](#class)
- [Seat](#seat)
- [Ticket](#ticket)
- [Order Ticket](#order-ticket)
- [Payment](#payment)

## Address

| address\_id | street | postal\_code | rt | rw | ward | district | city | province |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | Jalan Merdeka 12 | 10110 | 1 | 2 | Menteng | Jakarta Pusat | Jakarta | DKI Jakarta |
| 2 | Jalan Sudirman 25 | 12930 | 3 | 1 | Setiabudi | Jakarta Selatan | Jakarta | DKI Jakarta |
| 3 | Jalan Pemuda 17 | 60271 | 2 | 3 | Bubutan | Surabaya Timur | Surabaya | Jawa Timur |
| 4 | Jalan Asia Afrika 156 | 40112 | 1 | 1 | Babakan Ciparay | Bandung Kidul | Bandung | Jawa Barat |
| 5 | Jalan Diponegoro 8 | 56116 | 4 | 2 | Gajahmungkur | Semarang Selatan | Semarang | Jawa Tengah |
| 6 | Jalan Yos Sudarso 32 | 30128 | 5 | 2 | Karisidenan | Tegal Timur | Tegal | Jawa Tengah |
| 7 | Jalan Hasyim Ashari 80 | 60282 | 3 | 1 | Genteng | Surabaya Pusat | Surabaya | Jawa Timur |
| 8 | Jalan Sudirman 101 | 12210 | 5 | 3 | Kebayoran Baru | Jakarta Selatan | Jakarta | DKI Jakarta |
| 9 | Jalan Veteran 45 | 40115 | 6 | 2 | Babakan Ciamis | Bandung Kulon | Bandung | Jawa Barat |
| 10 | Jalan Pahlawan 23 | 56127 | 8 | 1 | Mangunharjo | Semarang Timur | Semarang | Jawa Tengah |
| 11 | Jalan Slamet Riyadi 72 | 57132 | 3 | 3 | Gilingan | Surakarta | Surakarta | Jawa Tengah |
| 12 | Jalan Ahmad Yani 55 | 54112 | 7 | 2 | Kedungkandang | Malang | Malang | Jawa Timur |
| 13 | Jalan Gajah Mada 10 | 60282 | 2 | 2 | Tegalsari | Surabaya Pusat | Surabaya | Jawa Timur |
| 14 | Jalan Thamrin 28 | 10130 | 9 | 1 | Menteng | Jakarta Pusat | Jakarta | DKI Jakarta |
| 15 | Jalan Diponegoro 15 | 12940 | 10 | 2 | Kuningan | Jakarta Selatan | Jakarta | DKI Jakarta |
| 16 | Jalan Kusuma Bangsa 4 | 60284 | 6 | 1 | Gubeng | Surabaya Pusat | Surabaya | Jawa Timur |
| 17 | Jalan Cihampelas 62 | 40116 | 11 | 3 | Cipaganti | Bandung Wetan | Bandung | Jawa Barat |
| 18 | Jalan Gajah Mada 78 | 56113 | 9 | 2 | Banyumanik | Semarang Selatan | Semarang | Jawa Tengah |
| 19 | Jalan Slamet Riyadi 110 | 57141 | 12 | 1 | Sumber | Surakarta | Surakarta | Jawa Tengah |
| 20 | Jalan Ijen 25 | 54123 | 10 | 2 | Klojen | Malang | Malang | Jawa Timur |
| 21 | Jalan Majapahit 18 | 60281 | 8 | 2 | Genteng | Surabaya Pusat | Surabaya | Jawa Timur |
| 22 | Jalan Thamrin 50 | 10150 | 13 | 3 | Tanah Abang | Jakarta Pusat | Jakarta | DKI Jakarta |
| 23 | Jalan Sudirman 35 | 12950 | 14 | 1 | Karet Semanggi | Jakarta Selatan | Jakarta | DKI Jakarta |
| 24 | Jalan Pemuda 32 | 60283 | 9 | 2 | Tegalsari | Surabaya Pusat | Surabaya | Jawa Timur |
| 25 | Jalan Cipaganti 82 | 40117 | 15 | 3 | Citarum | Bandung Wetan | Bandung | Jawa Barat |
| 26 | Jalan Gajah Mada 97 | 56114 | 11 | 2 | Pedurungan | Semarang Selatan | Semarang | Jawa Tengah |
| 27 | Jalan Slamet Riyadi 150 | 57151 | 16 | 1 | Banjarsari | Surakarta | Surakarta | Jawa Tengah |
| 28 | Jalan Ijen 35 | 54124 | 12 | 2 | Blimbing | Malang | Malang | Jawa Timur |
| 29 | Jalan Raya Diponegoro 112 | 60285 | 10 | 2 | Simokerto | Surabaya Barat | Surabaya | Jawa Timur |
| 30 | Jalan Thamrin 80 | 10160 | 17 | 3 | Cikini | Jakarta Pusat | Jakarta | DKI Jakarta |

## Customer
| customer\_id | address\_id | first\_name | last\_name | email | password | phone\_number | gender | age |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | 10 | Ade | Pratama | adepratama@gmail.com | 12345abc | 081234567890 | MALE | 25 |
| 2 | 9 | Rani | Fitriani | ranifitriani@yahoo.com | p@ssw0rd | 085678912345 | FEMALE | 32 |
| 3 | 8 | Budi | Santoso | budisantoso@hotmail.com | securepass123 | 081345678912 | MALE | 40 |
| 4 | 7 | Maya | Sari | mayasari@gmail.com | mypassword123 | 082233445566 | FEMALE | 29 |
| 5 | 6 | Agung | Kurniawan | agungkurniawan@outlook.com | pass1234 | 087654321098 | MALE | 35 |
| 6 | 5 | Siti | Rahmawati | sitirahmawati@gmail.com | strongpassword1 | 082112233445 | FEMALE | 27 |
| 7 | 4 | Fajar | Wijaya | fajarwijaya@yahoo.com | secret123 | 089876543210 | MALE | 31 |
| 8 | 3 | Dian | Puspita | dianpuspita@hotmail.com | mypass456 | 081112233445 | FEMALE | 36 |
| 9 | 2 | Rizki | Prasetyo | rizkiprasetyo@gmail.com | 123abcxyz | 085678967890 | MALE | 23 |
| 10 | 1 | Lina | Putri | linaputri@yahoo.com | p@ssword123 | 087654321123 | FEMALE | 28 |

## Agency
| agency\_id | address\_id | name | email | password | contact\_number |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | 20 | Agensi Penerbangan Langit | langit@example.com | Rahasia123 | 6281234567890 |
| 2 | 19 | Perjalanan Pesawat Lintas | pesawatlintas@example.com | Aman1234 | 6281398765432 |
| 3 | 18 | Maskapai Udara Utama | udarautama@example.com | Terbang456 | 6281123452345 |
| 4 | 17 | Penerbangan Cepat Express | cepatair@example.com | Express2023! | 6281567891234 |
| 5 | 16 | Tiket Pesawat Indah | pesawatindah@example.com | Indah789 | 6281234567893 |
| 6 | 15 | Penerbangan Cita Link | citalink@example.com | CitaLink2023 | 62813987612312 |
| 7 | 14 | Perjalanan Garuda | garuda@example.com | GarudaPass! | 62811234534523 |
| 8 | 13 | Maskapai Udara Megah | udaramegah@example.com | Megah2023 | 6281234567891 |
| 9 | 12 | Pesawat Terbang Aman | pesawataman@example.com | AmanWings! | 6281398762345 |
| 10 | 11 | Travel Udara Lintas | udaralintas@example.com | Lintas456 | 6281123456789 |

## Admin
| admin\_id | agency\_id | address\_id | first\_name | last\_name | email | password | phone\_number | gender |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | 1 | 30 | Budi | Santoso | budi.santoso@example.com | pass123 | 081234567890 | MALE |
| 2 | 2 | 29 | Lina | Wijaya | lina.wijaya@example.com | password123 | 082345678901 | FEMALE |
| 3 | 3 | 28 | Ahmad | Hidayat | ahmad.hidayat@example.com | 123456 | 083456789012 | MALE |
| 4 | 4 | 27 | Siti | Rahayu | siti.rahayu@example.com | qwerty | 084567890123 | FEMALE |
| 5 | 5 | 26 | Rudi | Kurniawan | rudi.kurniawan@example.com | pass1234 | 085678901234 | MALE |
| 6 | 6 | 25 | Linda | Susilo | linda.susilo@example.com | password1234 | 086789012345 | FEMALE |
| 7 | 7 | 24 | Dedi | Pranowo | dedi.pranowo@example.com | 12345678 | 087890123456 | MALE |
| 8 | 8 | 23 | Rina | Widjaja | rina.widjaja@example.com | qwerty123 | 088901234567 | FEMALE |
| 9 | 9 | 22 | Anto | Gunawan | anto.gunawan@example.com | pass12345 | 089012345678 | MALE |
| 10 | 10 | 21 | Sari | Saputra | sari.saputra@example.com | password12345 | 090123456789 | FEMALE |

## Airline

| airline\_id | name |
| :--- | :--- |
| 1 | Garuda Indonesia |
| 2 | Lion Air |
| 3 | Citilink |
| 4 | Batik Air |
| 5 | Sriwijaya Air |
| 6 | AirAsia Indonesia |
| 7 | Wings Air |
| 8 | Nam Air |
| 9 | Kalstar Aviation |
| 10 | TransNusa Air Services |

## Flight

| flight\_id | airline\_id | admin\_id | name | destination | distance | departure | arrival | capacity |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | 7 | 5 | MALANG-JAKARTA | Jakarta | 500 | 2023-05-24 08:00:00 | 2023-05-24 10:00:00 | 10 |
| 2 | 4 | 1 | YOGYAKARTA-SURABAYA | Surabaya | 300 | 2023-05-24 09:30:00 | 2023-05-24 11:30:00 | 10 |
| 3 | 2 | 9 | MEDAN-DENPASAR | Denpasar | 800 | 2023-05-24 11:00:00 | 2023-05-24 14:00:00 | 10 |
| 4 | 6 | 3 | PALU-MEDAN | Medan | 1000 | 2023-05-24 13:15:00 | 2023-05-24 16:15:00 | 10 |
| 5 | 1 | 5 | SUMUT-MAKASSAR | Makassar | 700 | 2023-05-24 15:30:00 | 2023-05-24 18:30:00 | 10 |
| 6 | 9 | 2 | LOMBOK-YOGYAKARTA | Yogyakarta | 400 | 2023-05-24 17:45:00 | 2023-05-24 19:45:00 | 10 |
| 7 | 8 | 8 | BLITAR-BALIKPAPAN | Balikpapan | 900 | 2023-05-24 20:00:00 | 2023-05-24 23:00:00 | 10 |
| 8 | 5 | 7 | KEDIRI-BANDUNG | Bandung | 200 | 2023-05-24 06:30:00 | 2023-05-24 08:30:00 | 10 |
| 9 | 10 | 6 | NGAWI-PONTIANAK | Pontianak | 600 | 2023-05-24 09:45:00 | 2023-05-24 12:45:00 | 10 |
| 10 | 3 | 4 | PEKANBARU-MANADO | Manado | 1200 | 2023-05-24 14:15:00 | 2023-05-24 17:15:00 | 10 |

## Class

| class\_id | flight\_id | name |
| :--- | :--- | :--- |
| 1 | 1 | FIRST |
| 2 | 1 | BUSINESS |
| 3 | 2 | FIRST |
| 4 | 2 | BUSINESS |
| 5 | 2 | ECONOMY |
| 6 | 3 | BUSINESS |
| 7 | 4 | FIRST |
| 8 | 4 | BUSINESS |
| 9 | 5 | FIRST |
| 10 | 6 | BUSINESS |
| 11 | 7 | FIRST |
| 12 | 8 | BUSINESS |
| 13 | 8 | ECONOMY |
| 14 | 9 | FIRST |
| 15 | 10 | FIRST |

## Seat

| seat\_id | class\_id | available |
| :--- | :--- | :--- |
| 1 | 1 | 1 |
| 2 | 2 | 0 |
| 3 | 3 | 1 |
| 4 | 4 | 1 |
| 5 | 5 | 0 |
| 6 | 6 | 1 |
| 7 | 7 | 0 |
| 8 | 8 | 1 |
| 9 | 9 | 1 |
| 10 | 10 | 0 |
| 11 | 11 | 1 |
| 12 | 12 | 1 |
| 13 | 13 | 0 |
| 14 | 14 | 1 |
| 15 | 15 | 0 |
| 16 | 1 | 1 |
| 17 | 2 | 1 |
| 18 | 3 | 0 |
| 19 | 4 | 0 |
| 20 | 5 | 1 |
| 21 | 6 | 1 |
| 22 | 7 | 0 |
| 23 | 8 | 0 |
| 24 | 9 | 1 |
| 25 | 10 | 1 |
| 26 | 11 | 0 |
| 27 | 12 | 1 |
| 28 | 13 | 1 |
| 29 | 14 | 0 |
| 30 | 15 | 1 |
| 31 | 1 | 0 |
| 32 | 2 | 1 |
| 33 | 3 | 0 |
| 34 | 4 | 1 |
| 35 | 5 | 0 |
| 36 | 6 | 1 |
| 37 | 7 | 0 |
| 38 | 8 | 1 |
| 39 | 9 | 1 |
| 40 | 10 | 0 |
| 41 | 11 | 1 |
| 42 | 12 | 0 |
| 43 | 13 | 1 |
| 44 | 14 | 1 |
| 45 | 15 | 0 |
| 46 | 1 | 1 |
| 47 | 2 | 0 |
| 48 | 3 | 1 |
| 49 | 4 | 1 |
| 50 | 5 | 0 |
| 51 | 6 | 1 |
| 52 | 7 | 0 |
| 53 | 8 | 1 |
| 54 | 9 | 1 |
| 55 | 10 | 0 |
| 56 | 11 | 1 |
| 57 | 12 | 1 |
| 58 | 13 | 0 |
| 59 | 14 | 1 |
| 60 | 15 | 0 |
| 61 | 1 | 1 |
| 62 | 2 | 1 |
| 63 | 3 | 0 |
| 64 | 4 | 0 |
| 65 | 5 | 1 |
| 66 | 6 | 1 |
| 67 | 7 | 0 |
| 68 | 8 | 0 |
| 69 | 9 | 1 |
| 70 | 10 | 1 |
| 71 | 11 | 0 |
| 72 | 12 | 1 |
| 73 | 13 | 1 |
| 74 | 14 | 0 |
| 75 | 15 | 1 |
| 76 | 1 | 0 |
| 77 | 2 | 1 |
| 78 | 3 | 0 |
| 79 | 4 | 1 |
| 80 | 5 | 0 |
| 81 | 6 | 1 |
| 82 | 7 | 0 |
| 83 | 8 | 1 |
| 84 | 9 | 1 |
| 85 | 10 | 0 |
| 86 | 11 | 1 |
| 87 | 12 | 0 |
| 88 | 13 | 1 |
| 89 | 14 | 1 |
| 90 | 15 | 0 |
| 91 | 1 | 1 |
| 92 | 2 | 0 |
| 93 | 3 | 1 |
| 94 | 4 | 1 |
| 95 | 5 | 0 |
| 96 | 6 | 1 |
| 97 | 7 | 0 |
| 98 | 8 | 1 |
| 99 | 9 | 1 |
| 100 | 10 | 0 |

## Ticket

| ticket\_id | flight\_id | seat\_id | order\_ticket\_id | price |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 1 | 56 | 1 | 1500000.00 |
| 2 | 2 | 83 | 2 | 2000000.00 |
| 3 | 3 | 12 | 3 | 1750000.00 |
| 4 | 4 | 64 | 3 | 1900000.00 |
| 5 | 5 | 7 | 3 | 1650000.00 |
| 6 | 6 | 91 | 4 | 2250000.00 |
| 7 | 7 | 28 | 5 | 1800000.00 |
| 8 | 8 | 33 | 5 | 1950000.00 |
| 9 | 9 | 41 | 6 | 1700000.00 |
| 10 | 10 | 76 | 6 | 2100000.00 |
| 11 | 1 | 92 | 6 | 2200000.00 |
| 12 | 2 | 17 | 7 | 1850000.00 |
| 13 | 3 | 63 | 8 | 1600000.00 |
| 14 | 4 | 34 | 8 | 2300000.00 |
| 15 | 5 | 80 | 9 | 2050000.00 |
| 16 | 6 | 52 | 10 | 1400000.00 |
| 17 | 7 | 25 | 10 | 1750000.00 |
| 18 | 8 | 97 | 11 | 1900000.00 |
| 19 | 9 | 9 | 11 | 1550000.00 |
| 20 | 10 | 45 | 12 | 2100000.00 |
| 21 | 1 | 87 | 12 | 1800000.00 |
| 22 | 2 | 73 | null | 1950000.00 |
| 23 | 3 | 49 | null | 2100000.00 |
| 24 | 4 | 38 | null | 1650000.00 |
| 25 | 5 | 21 | null | 2200000.00 |
| 26 | 6 | 60 | null | 2000000.00 |
| 27 | 7 | 95 | null | 1750000.00 |
| 28 | 8 | 3 | null | 1850000.00 |
| 29 | 9 | 69 | null | 2250000.00 |
| 30 | 10 | 86 | null | 1700000.00 |
| 31 | 1 | 39 | null | 1600000.00 |
| 32 | 2 | 81 | null | 1400000.00 |
| 33 | 3 | 61 | null | 2050000.00 |
| 34 | 4 | 26 | null | 1500000.00 |
| 35 | 5 | 48 | null | 2300000.00 |
| 36 | 6 | 14 | null | 1750000.00 |
| 37 | 7 | 67 | null | 1950000.00 |
| 38 | 8 | 53 | null | 2100000.00 |
| 39 | 9 | 37 | null | 1900000.00 |
| 40 | 10 | 78 | null | 2200000.00 |
| 41 | 1 | 19 | null | 1750000.00 |
| 42 | 2 | 72 | null | 1550000.00 |
| 43 | 3 | 36 | null | 1800000.00 |
| 44 | 4 | 66 | null | 1950000.00 |
| 45 | 5 | 22 | null | 2100000.00 |
| 46 | 6 | 50 | null | 1650000.00 |
| 47 | 7 | 94 | null | 2000000.00 |
| 48 | 8 | 4 | null | 1600000.00 |
| 49 | 9 | 88 | null | 1850000.00 |
| 50 | 10 | 70 | null | 2250000.00 |

## Order Ticket

| order\_ticket\_id | customer\_id | date\_order\_placed | date\_order\_paid | price\_amount |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 3 | 2023-05-29 13:59:18 | 2023-05-27 10:30:00 | 1500000.00 |
| 2 | 8 | 2023-05-29 13:59:18 | 2023-05-27 14:15:00 | 2000000.00 |
| 3 | 5 | 2023-05-29 13:59:18 | 2023-05-27 17:45:00 | 5300000.00 |
| 4 | 1 | 2023-05-29 13:59:18 | 2023-05-27 09:00:00 | 2250000.00 |
| 5 | 2 | 2023-05-29 13:59:18 | 2023-05-27 16:30:00 | 3750000.00 |
| 6 | 4 | 2023-05-29 13:59:18 | 2023-05-27 11:45:00 | 6000000.00 |
| 7 | 9 | 2023-05-29 13:59:18 | 2023-05-27 13:00:00 | 1850000.00 |
| 8 | 10 | 2023-05-29 13:59:18 | 2023-05-27 15:30:00 | 3900000.00 |
| 9 | 6 | 2023-05-29 13:59:18 | 2023-05-27 08:45:00 | 2050000.00 |
| 10 | 3 | 2023-05-29 13:59:18 | 2023-05-28 12:15:00 | 3150000.00 |
| 11 | 1 | 2023-05-29 13:59:18 | 2023-05-28 16:00:00 | 3450000.00 |
| 12 | 7 | 2023-05-29 13:59:18 | 2023-05-28 10:30:00 | 3900000.00 |
| 13 | 5 | 2023-05-29 13:59:18 | 2023-05-28 15:45:00 | null |
| 14 | 8 | 2023-05-29 13:59:18 | 2023-05-28 14:00:00 | null |
| 15 | 2 | 2023-05-29 13:59:18 | 2023-05-28 11:30:00 | null |
| 16 | 4 | 2023-05-29 13:59:18 | 2023-05-28 17:00:00 | null |
| 17 | 9 | 2023-05-29 13:59:18 | 2023-05-28 13:15:00 | null |
| 18 | 10 | 2023-05-29 13:59:18 | 2023-05-28 09:30:00 | null |
| 19 | 6 | 2023-05-29 13:59:18 | 2023-05-28 08:00:00 | null |
| 20 | 3 | 2023-05-29 13:59:18 | 2023-05-29 14:45:00 | null |
| 21 | 2 | 2023-05-29 13:59:18 | 2023-05-29 13:00:00 | null |
| 22 | 1 | 2023-05-29 13:59:18 | 2023-05-29 16:30:00 | null |
| 23 | 4 | 2023-05-29 13:59:18 | 2023-05-29 12:00:00 | null |
| 24 | 7 | 2023-05-29 13:59:18 | 2023-05-29 09:15:00 | null |
| 25 | 9 | 2023-05-29 13:59:18 | 2023-05-29 17:30:00 | null |
| 26 | 5 | 2023-05-29 13:59:18 | 2023-05-29 11:45:00 | null |
| 27 | 8 | 2023-05-29 13:59:18 | 2023-05-29 15:00:00 | null |
| 28 | 10 | 2023-05-29 13:59:18 | 2023-05-29 10:00:00 | null |
| 29 | 6 | 2023-05-29 13:59:18 | 2023-05-29 08:15:00 | null |
| 30 | 1 | 2023-05-29 13:59:18 | 2023-05-30 09:30:00 | null |
| 31 | 3 | 2023-05-29 13:59:18 | 2023-05-30 15:00:00 | null |
| 32 | 4 | 2023-05-29 13:59:18 | 2023-05-30 10:15:00 | null |
| 33 | 7 | 2023-05-29 13:59:18 | 2023-05-30 13:45:00 | null |
| 34 | 2 | 2023-05-29 13:59:18 | 2023-05-30 11:00:00 | null |
| 35 | 8 | 2023-05-29 13:59:18 | 2023-05-30 12:30:00 | null |
| 36 | 5 | 2023-05-29 13:59:18 | 2023-05-30 16:45:00 | null |
| 37 | 6 | 2023-05-29 13:59:18 | 2023-05-30 14:00:00 | null |
| 38 | 9 | 2023-05-29 13:59:18 | 2023-05-30 17:15:00 | null |
| 39 | 10 | 2023-05-29 13:59:18 | 2023-05-30 08:45:00 | null |

## Payment

| payment\_id | order\_ticket\_id | payment\_method |
| :--- | :--- | :--- |
| 1 | 1 | BCA |
| 2 | 2 | BSI |
| 3 | 3 | BRI |
| 4 | 4 | MANDIRI |
| 5 | 5 | BNI |
| 6 | 6 | BCA |
| 7 | 7 | BRI |
| 8 | 8 | BSI |
| 9 | 9 | BCA |
| 10 | 10 | BNI |
| 11 | 11 | BNI |
| 12 | 12 | BCA |
| 13 | 13 | MANDIRI |
| 14 | 14 | BRI |
| 15 | 15 | BSI |
| 16 | 16 | BSI |
| 17 | 17 | BCA |
| 18 | 18 | BRI |
| 19 | 19 | BSI |
| 20 | 20 | MANDIRI |
| 21 | 21 | BCA |
| 22 | 22 | BNI |
| 23 | 23 | MANDIRI |
| 24 | 24 | BRI |
| 25 | 25 | BSI |
| 26 | 26 | BSI |
| 27 | 27 | BCA |
| 28 | 28 | MANDIRI |
| 29 | 29 | BRI |
| 30 | 30 | BNI |
| 31 | 31 | BCA |
| 32 | 32 | BRI |
| 33 | 33 | BSI |
| 34 | 34 | BNI |
| 35 | 35 | BCA |
| 36 | 36 | MANDIRI |
| 37 | 37 | BSI |
| 38 | 38 | BRI |
| 39 | 39 | BNI |
