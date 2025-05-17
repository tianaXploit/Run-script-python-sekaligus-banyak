#!/bin/bash

SESSION="bot"

# Nama-nama file script Python
SCRIPT1="script1.py"
SCRIPT2="script2.py"
SCRIPT3="script3.py"
SCRIPT4="script4.py"
SCRIPT5="script5.py"

# Cek apakah session sudah ada
tmux has-session -t $SESSION 2>/dev/null

if [ $? != 0 ]; then
    echo "Membuat session tmux baru dan menjalankan semua script..."

    # Membuat session dan jalankan script pertama
    tmux new-session -d -s $SESSION "python3 $SCRIPT1"

    # Split jadi dua dan jalankan script kedua
    tmux split-window -v -t $SESSION "python3 $SCRIPT2"

    # Pindah ke panel bawah dan split horizontal untuk script ke-3
    tmux select-pane -D -t $SESSION
    tmux split-window -h -t $SESSION "python3 $SCRIPT3"

    # Pindah ke panel kanan atas dan split lagi vertikal untuk script ke-4
    tmux select-pane -U -t $SESSION
    tmux split-window -h -t $SESSION "python3 $SCRIPT4"

    # Pindah ke panel kanan bawah dan split horizontal untuk script ke-5
    tmux select-pane -D -t $SESSION
    tmux split-window -h -t $SESSION "python3 $SCRIPT5"

    # Atur ulang layout agar rapi
    tmux select-layout -t $SESSION tiled
fi

# Attach ke session
tmux attach -t $SESSION
