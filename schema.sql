-- 1. Tablo Oluşturma
CREATE TABLE satislar (
    id SERIAL PRIMARY KEY,
    siparis_id INT UNIQUE NOT NULL,
    urun_adi TEXT NOT NULL,
    kategori VARCHAR(50),
    fiyat DECIMAL(10, 2),
    adet INT,
    tarih DATE,
    olusturma_tarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Veri Kontrol Sorgusu
SELECT * FROM satislar ORDER BY tarih DESC;

-- 3. AI İçin Özet Veri Çekme Sorgusu (n8n içinde kullanılacak)
SELECT 
    kategori, 
    SUM(adet) as toplam_adet, 
    SUM(fiyat * adet) as toplam_ciro
FROM satislar
GROUP BY kategori
ORDER BY toplam_ciro DESC;
