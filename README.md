# Belgenet docker imajı
## Imajı Derleme
```
git clone https://github.com/my-garbage-stuff/belgenet-docker
cd belgenet-docker
docker build -t belgenet .
```
## Imajı başlatma
```
docker run -it --rm --network host --name belgenet --privileged belgenet
```
* Not: bunu servis gibi çalıştırabilirsiniz.

* Uyarı: Deneysel çalışmadır. Düzgün çalışmayabilir.
