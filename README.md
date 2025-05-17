# Run-script-python-sekaligus-banyak
Menjalankan dengan tmux di vps automatis simpel
Langkah 1: Masuk ke VPS kamu dan install tmux
sudo apt update
sudo apt install tmux -y
Langkah 2: Buat dan jalankan session tmux
Langkah 3: Simpan dan beri izin eksekusi
chmod +x run_bots.sh
Langkah 4: Jalankan
./run_bots.sh
Catatan
Pastikan file script1.py hingga script5.py berada di folder yang sama dengan run_bots.sh.
Kalau filenya beda nama atau di folder lain, sesuaikan nilai variabel SCRIPT1, SCRIPT2, dll.
