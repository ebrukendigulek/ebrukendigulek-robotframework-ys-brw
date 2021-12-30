##  Virtual env işlemleri

Virtual env nasıl yaratılır:
1- Once virtual env ın kendisi pip paket yoneticisi ile kurulur.(python2 ile çalışılacaksa python3 yerine python yazılır.)
- "python3 -m pip install --user virtualenv"

2- Yeni bir venv kurmak için aşağıdaki komut çalıştırılır.(Burada ki son parametre virtualenviroment adı oluyor.)
- "python3 -m venv venv"  

3- Kurulan venv ın aktive edilmesi gerekir. 
- "source venv/bin/activate"


##  Chrome Driver işlemleri

Projeyi aktif ettikten sonra chrome driver linklenir.
1- chrome driver'ın usr/bin in altında gorebilmesi için chromedriver indirilir.
- "brew reinstall chromedriver"

2- "which chromedriver" komutu ile chrome driver yerini gösterir.("/usr/local/bin/chromedriver" gibi)
- which chromedriver

3- webdrivermanager proje run edilerken, verilen pathe bakıp, burdaki executable bin klasoru altındaki driver dosyası ile testi calıstırır. 
- webdrivermanager firefox chrome --linkpath /usr/local/bin

4- Projenin dependency lerini kurmak için virtual enviroment aktive ettikten sonra aşağıdaki komutlar çalıştırılır.
- python -m pip install --upgrade pip
- pip install -r requirements.txt

##  Projeyi Çalıştırmak için:

1- venv klasoru altına gidilerek test çalıştırılır. Test sonuçlarını -d ile belirtiğiniz klasor altına atabilirsiniz.
- robot -d ../Results ../test/yemeksepeti.robot
