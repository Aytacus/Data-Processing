import csv
import random

# Veri kümesi parametreleri
veri_sayisi = 25
dosya_adı = "makine_ogrenimi_verisi.csv"

# Rastgele veri oluşturma
veri = []
for _ in range(veri_sayisi):
    x1 = random.uniform(0, 10)  # Özellik 1
    x2 = random.uniform(0, 10)  # Özellik 2
    y = 2 * (x1 + x2)  # Hedef değişken
    veri.append([x1, x2, y])

# CSV dosyasına yazma
with open(dosya_adı, mode='w', newline='') as dosya:
    yazici = csv.writer(dosya)
    yazici.writerow(['X1', 'X2', 'y'])  # Sütun başlıkları
    yazici.writerows(veri)  # Veri satırları

print(f"{dosya_adı} dosyası oluşturuldu.")