
#  Дипломная работа по профессии «Системный администратор»
# SYS-22 Хакимова Р.Р.

## Задача

Ключевая задача — разработать отказоустойчивую инфраструктуру для сайта, включающую мониторинг, сбор логов и резервное копирование основных данных. Инфраструктура должна размещаться в Yandex Cloud и отвечать минимальным стандартам безопасности.

### 1\. Для выполнения задания был написан манифест файл Terraform [main.tf](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/main.tf) для создания следующих ресурсов:

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

![08_20Network](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/08_%20Network.PNG)

</details>

#### 1.3. NAT-шлюз ВМ , где настроена только  внутренняя сеть.

<details>
<summary> Скриншот(-ы) </summary>

![08_20Network](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/_diplom/img/08_%20Network.PNG)

</details>









