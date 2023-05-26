#!/bin/bash

echo "Selamat datang di Program Kasir!"
echo "------------------------------"

# Meminta input jumlah barang
read -p "Masukkan jumlah barang yang ingin dibeli: " jumlah_barang

# Inisialisasi variabel total_harga
total_harga=0

# Loop untuk memasukkan harga setiap barang
for ((i=1; i<=jumlah_barang; i++))
do
    echo "Barang ke-$i:"
    read -p "  Nama barang  : " nama_barang
    read -p "  Harga barang : " harga_barang

    # Menghitung subtotal harga barang
    subtotal=$((harga_barang * 1))

    # Menambahkan subtotal ke total_harga
    total_harga=$((total_harga + subtotal))

    echo "Subtotal harga: $subtotal"
done

echo "------------------------------"
echo "Total harga belanjaan: $total_harga"
echo "Terima kasih telah berbelanja di toko kami!"
