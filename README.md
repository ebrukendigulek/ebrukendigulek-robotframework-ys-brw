##  Virtual env işlemleri

Virtual env nasıl yaratıtılır
1- Once virtual env ın kendisi pip paket yoneticisi ile kurulur.(python2 ile çalışılacaksa python3 yerine python yazılır.)
- "python3 -m pip install --user virtualenv"

2- Yeni bir venv kurmak için aşağıdaki komut çalıştırılır.(Buradaki son parametre virtualenviroment adı oluyor.)
- "python3 -m venv venv"  

3- Kurulan venv ın aktive edilmesi gerekir. 
- "source venv/bin/activate"


##  Chrome Driver işlemleri

Projeyi aktive ettikten sonra chrome driver linklenir.
1- chrome driver'ın usr/bin in altında gorebilmesi için chromedriver indirilir.
- "brew reinstall chromedriver"

2- "which chromedriver" komutu ile chrome driver ın hangi directory altında olduğunu gösterir.("/usr/local/bin/chromedriver" gibi)
- which chromedriver

3- webdrivermanager ın projeyi run ederken, verilen pathe bak burdaki executable bin in altındaki driver dosyalarından testi calıstırır. 
- webdrivermanager firefox chrome --linkpath /usr/local/bin

4- robot ile testi calıstıryorsunuz, projenin içinde driver koymaya gerek yok.

5- Projenin dependency lerini kurmak için aşağıdaki komut ile virtual enviroment aktive ettikten sonra çalıştırılır.
- python -m pip install --upgrade pip
- pip install -r requirements.txt

##  Projeyi Çalıştırmak için:

1- venv klasoru altına gidilerek test çalıştırılır. Test sonuçlarını -d ile belirtiğiniz klasor altına atabilirsiniz.
- robot -d ../Results ../test/yemeksepeti.robot
