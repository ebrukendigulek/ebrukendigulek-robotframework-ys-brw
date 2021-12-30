

Virtual env işlemleri

Peki virtual env nasıl yaratıtılır
1- Once virtual env ın kendisi pip paket yoneticisi ile kurulur.
python3 -m pip install --user virtualenv (python 2 ile çalışılacaksa python3 yerine python yazıyoruz.)

2- Yeni bir venv kurmak için 
python3 -m venv venv   (Buradaki son parametre virtualenviroment ı adı oluyor.)

3- Kurduğumuz venv ı aktive etmek etmek gerekiyor. 
source venv/bin/activate
diyerek var olan virtual enviroment ı aktive ediyorsun.


Chrome Driver işlemleri

Projeyi aktive ettikten sonra chrome driveri linkliyoruz
1- chrome driver ın usr/bin in altında gorebilmesi için 
brew reinstall chromedriver

2- which chromedriver chrome driver ın hangi dir olduğunu gosteriyor
/usr/local/bin/chromedriver


3- webdrivermanager firefox chrome --linkpath /usr/local/bin
webdrivermanager ın projeyi run ederken git bu path e bak burdaki executable bin in altındaki driver dosyalarından testi calıstır

4- robot ile testi calıstıryorsu, projenin içinde driver koymaya gerek yok.

5- Projenin dependecy lerini kurmak için pip install -r requirements.txt yı virtual enviroment aktive ettikten sonra çalıştırman gerek

6- robot101env altında -> robot ../tests/test1.robot