%Pemangilan Gambar 
a = imread('FOTO.jpg');
imshow(a)
b = rgb2gray(a);
figure; imshow(b)
imhist(b)
citra_A = b;

%Histogram 3 Bit
[n m] = size(citra_A);
H = zeros(1,256);
for x = 1 : n
    for y = 1 : m
        ii = citra_A(x,y);
        H(ii+1) = H(ii+1) +1;
    end
end
plot (0:255,H)
figure(2); subplot(2,1,1);imhist(citra_A)
figure(2); subplot(2,1,2);plot(0:255,H)
figure(2); subplot(2,1,2);bar(0:255,H)

%Hitogram Equalisasi
c = histag(citra_A);
figure(2); subplot(2,1,1);imshow(citra_A)
title('Citra Asli')
figure(2); subplot(2,1,2);imshow(citra_A)
title('Histogram Equalisasi')

figure(2); subplot(2,2,1);imshow(citra_A)
figure(2); subplot(2,2,3);imshow(citra_A)
figure(2); subplot(2,2,1);imhist(citra_A)
figure(2); subplot(2,2,4);imhist(citra_A)
