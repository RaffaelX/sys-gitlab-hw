
#  Дипломная работа по профессии «Системный администратор»
# SYS-22 Хакимова Р.Р.

## Задача

Ключевая задача — разработать отказоустойчивую инфраструктуру для сайта, включающую мониторинг, сбор логов и резервное копирование основных данных. Инфраструктура должна размещаться в Yandex Cloud и отвечать минимальным стандартам безопасности.

### 1\. Для выполнения задания был написан манифест terraform [main.tf](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/main.tf), котрый созает следующие ресурсы:

#### 1.1 Виртуальные машины.

  - linux-bastion-host
  - linux-elastic
  - linux-kibana
  - linux-nginx-1 
  - linux-nginx-2 
  - linux-zabix-server

<details>
<summary> Скриншот(-ы) </summary>

![01_vm](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/01_vm.PNG)

</details>

#### 1.2 Сеть и подсети в разных зонах доступнояти для обеспечения отказоустойчивости.

- linux-bastion-host (192.168.30.30 в ru-central1-c)
- linux-elastic (192.168.40.10 в ru-central1-d)
- linux-kibana (192.168.30.20 в ru-central1-c)
- linux-nginx-1 (192.168.10.10 в ru-central1-a)
- linux-nginx-2 (192.168.20.10 в ru-central1-b)
- linux-zabix-server (192.168.30.10 в ru-central1-c)

<details>
<summary> Скриншот(-ы) </summary>

![Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/08_%20Network.PNG](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/08_%20Network.PNG "Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/08_%20Network.PNG")

</details>

#### 1.3. NAT-шлюз ВМ , где настроена только  внутренняя сеть.

<details>
<summary> Скриншот(-ы) </summary>

![10_20NetMap_1](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/10_%20NetMap_1.PNG)

![Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/10_%20NetMap_2.PNG](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/10_%20NetMap_2.PNG "Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/10_%20NetMap_2.PNG")

</details>

#### 1.4 Группы безопасности соответствующих сервисов на входящий трафик только к нужным портам

- bastion-sg (доступ открыт на 22 порт)
- elastic-sg (доступ открыт на 22, 10050, 9200 порты)
- kibana-sg (доступ открыт на 22, 10050, 5601 порты)
- nginx-sg (доступ открыт на 22, 80, 10050 порты)
- zabix-sg (доступ на 22, 8080, 10051 порты)

<details>
<summary> Скриншот(-ы) </summary>

![09_20SG](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/09_%20SG.PNG)

</details>

#### 1.5 Балансировщик нагрузки для распределения запросов на сайт и обеспечения безопасности

<details>
<summary> Скриншот(-ы) </summary>

![02_target-group](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/02_target-group.PNG)

![03_backend-group](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/03_backend-group.PNG)

![Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/04_backend-group.PNG](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/04_backend-group.PNG "Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/04_backend-group.PNG")

![05_http-router](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/05_http-router.PNG)

![06_http-router](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/06_http-router.PNG)

![07_20ALB](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/07_%20ALB.PNG)

</details>

### 2. Установка и настройка серверов на ВМ производилась с помощью плэйбуков  Ansible:

#### 2.1 Установка и настройка производилась в Visual Studio Code через установленный на bastion host Ansible по ssh 

**[файл inventory.ini](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/inventory.ini)**

<details>
<summary> Скриншот(-ы) </summary>

![00_Bastion-host](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/00_Bastion-host.PNG)

</details>


####  2.2 Установка Elasticsearch и Kibana 

**[elasticsearch_playbook.yaml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/elasticsearch_playbook.yaml), [main.yml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/elasticsearch/tasks/main.yml)**

* скачивает elasticsearch deb
* устанавливает elasticsearch
* корректирует конфигурационный файл
* автоматически корректирует файл шаблона для установки filebeat (вносит пароль)
* выводит информаци об успешности запуска сервиса
* выводит на экран пароль пользователя и токен для подключения kibana

**[kibana_playbook.yaml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/kibana_playbook.yaml), [main.yml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/kibana/tasks/main.yml)**

* скачивает elasticsearch
* устанавливает kibana
* корректирует конфигурационный файл
* выводит информаци об успешности запуска сервиса
* выводит на экран 6-ти значный код для подтверждения подключения к elastic  
    Админка **[Kinbana](https://)**
   
<details>
<summary> Скриншот(-ы) </summary>

![28_ install_ELK](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/28_%20install_ELK.PNG)

</details>

####  2.3 Установка NGINX на web сервера [nginx-playbook.yaml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/nginx-playbook.yaml), [main.yml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/nginx/tasks/main.yml)

* устанавливает nginx на ВМ linux-nginx-1, linux-nginx-2
* устанавливает начальную страницу сайта по шаблону j2, доступ через балансировщик **[ссылка](158.160.130.31:80)**

<details>
<summary> Скриншот(-ы) </summary>

![21_ install_nginx](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/21_%20install_nginx.PNG)

![22_ install_nginx](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/22_%20install_nginx.PNG)

![23_ install_nginx](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/23_%20install_nginx.PNG)

</details>

#### 2.4 Установка filebeat на web сервера для сбора логов NGINX [filebeat_playbook.yaml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/filebeat_playbook.yaml), [main.yml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/filebeat/tasks/main.yml)

* скачивает filebeat deb
* устанавливает filebeat
* выводит информаци об успешности запуска сервиса
* формирует подготовленный с локального хоста конфигурационный файл из шалона j2

<details>
<summary> Скриншот(-ы) </summary>

![28_20](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/28_%20install_filebeat.PNG)

![30_kibana_discover](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/30_kibana_discover.PNG)

![30_kibana_discover2](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/30_kibana_discover2.PNG)

</details>

#### 2.5 Установка zabbix-agent на ВМ [zabbix_agent_playbook.yaml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/zabbix_agent_playbook.yaml), [main.yml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/zabbix_agent/tasks/main.yml)

  - добавляет репозиторий zabbix
  - устанавливает zabbix agent на все хосты
  - вносит корректировку в файл конфигурации  


<details>
<summary> Скриншот(-ы) </summary>

![25_install_zabbix_agent](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/25_%20install_zabbix_agent.PNG)

</details>

#### 2.6 Установка zabbix-server [zabbix_server_playbook.yaml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/zabbix_server_playbook.yaml), [main.yml](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/ansible/zabbix_server/tasks/main.yml)
  
  - добавляет репозиторий zabbix
  - устанавливает на хост zabbix -  zabbix server, zabbix agent, mysql, nginx
  - создает базу данных, пользователя, задает пароль
**  [Админка zabbix-server](http://51.250.33.162:8080)**

<details>
<summary> Скриншот(-ы) </summary>

![24_install_zabbix_server](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/24_%20install_zabbix_server.PNG)

![26_ install_zabbix_agent](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/26_%20install_zabbix_agent.PNG)

![27_ install_zabbix_agent](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/27_%20install_zabbix_agent.PNG)

</details>

### 3. Резервное копирование 
#### 3.1 Для резервного копирования был написан манифест terraform  [snapshot.tf](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/snapshot.tf)

<details>
<summary> Скриншот(-ы) </summary>

![99_Snapshot_1](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/99_Snapshot_1.PNG)

![99_Snapshot_2](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/99_Snapshot_2.PNG)

</details>

## Инфраструктура готова к эксплуатации
________________________________________________________________________________

P.S.
Во время формирования дипломного проекта возникли трудности с репозиториями  https://artifacts.elastic.co/GPG-KEY-elasticsearch, https://artifacts.elastic.co/packages/8.x/apt и успешно инструкции выполнялись с 10 попытки, а то и больше.  Ошибка 403 forbidden. Как выяснилось это результат санкционной политики. 
Нашел репозиторий для elastic на яндексе, но для Debian они не работали, а работали только для Ubuntu.
На всё это ушло много времени.

ответ службы поддержки:

![ps1](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/ps1.PNG)

![ps2](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/ps2.PNG)

Поэтому я не стал применять инструкции в Ansible подобные таким как:

```yaml
- name: import the elastic apt key
   ansible.builtin.apt_key:
     url: https://artifacts.elastic.co/GPG-KEY-elasticsearch
     state: present

- name: add elastic repository
    ansible.builtin.apt_repository:
      repo: deb https://artifacts.elastic.co/packages/8.x/apt stable main
      state: present
```
А просто скачал на бастион хост deb файл с репозитория яндекса https://mirror.yandex.ru/mirrors/elastic/8/
