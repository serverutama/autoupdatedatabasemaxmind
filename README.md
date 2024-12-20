
# Auto Update MaxMind GeoIP Database

Skrip ini akan mengunduh dan memperbarui file MaxMind GeoIP Database (GeoLite2-ASN, GeoLite2-City, dan GeoLite2-Country) secara otomatis. Anda dapat menjadwalkan pembaruan ini menggunakan cron job.

## Cara Pakai

1. **Unduh Skrip Pembaruan:**
   Jalankan perintah berikut untuk mengunduh skrip pembaruan otomatis:

   ```bash
   wget https://raw.githubusercontent.com/serverutama/autoupdatedatabasemaxmind/refs/heads/main/update_maxmind.sh

	2.	Beri Izin Eksekusi pada Skrip:
Setelah mengunduh skrip, beri izin eksekusi agar bisa dijalankan:

chmod +x update_maxmind.sh


	3.	Edit Skrip untuk Menambahkan Kunci Lisensi MaxMind:
Buka skrip dengan editor teks, misalnya menggunakan nano:

nano update_maxmind.sh

Gantilah bagian YOUR_LICENSE_KEY dengan kunci lisensi MaxMind Anda. Anda bisa mendapatkan kunci lisensi di halaman unduhan MaxMind.
Selain itu, pastikan untuk mengubah path direktori "/home/data/geo" menjadi lokasi tempat Anda menyimpan file GeoIP di sistem Anda.

	4.	Jalankan Skrip Pembaruan:
Setelah mengedit skrip, jalankan skrip untuk memperbarui database MaxMind:

./update_maxmind.sh


	5.	Verifikasi Pembaruan:
Skrip ini akan mengunduh dan mengekstrak file GeoLite2 terbaru (ASN, City, dan Country) ke direktori yang Anda tentukan. Anda dapat memverifikasi apakah pembaruan berhasil dengan memeriksa file yang telah diunduh di direktori tersebut.

Penjadwalan Pembaruan Otomatis

Untuk menjadwalkan pembaruan otomatis menggunakan cron job, Anda bisa menambahkan cron job yang menjalankan skrip ini pada interval yang Anda tentukan. Misalnya, untuk menjalankan pembaruan setiap minggu pada hari Minggu pukul 03:00 AM, tambahkan baris berikut ke crontab:

0 3 * * 0 /path/to/update_maxmind.sh

Untuk mengedit crontab, jalankan perintah:

crontab -e

Lisensi

Skrip ini menggunakan lisensi terbuka dan dapat digunakan secara bebas. Pastikan Anda memiliki lisensi MaxMind yang valid untuk mengunduh database GeoIP.

### Penjelasan:

- **Langkah 1**: Mengunduh skrip dari repositori GitHub.
- **Langkah 2**: Memberikan izin eksekusi pada skrip agar bisa dijalankan.
- **Langkah 3**: Mengedit skrip untuk menambahkan kunci lisensi MaxMind dan mengubah lokasi file.
- **Langkah 4**: Menjalankan skrip untuk memperbarui file GeoIP.
- **Langkah 5**: Menjadwalkan pembaruan otomatis dengan cron job (opsional).

Dengan README ini, pengguna dapat mengikuti instruksi dengan mudah untuk mengatur pembaruan otomatis untuk database MaxMind.
