# Belgenet docker imajı
## Imajı Derleme
```
docker build -t belgenet .
```
## Imajı başlatma
```
docker run -it --rm --network host --name belgenet --privileged belgenet
```
* Not: bunu servis gibi çalıştırabilirsiniz.

* Uyarı: Deneysel çalışmadır. Düzgün çalışmayabilir.
