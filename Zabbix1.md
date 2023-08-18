# Домашнее задание к занятию "`# Система мониторинга Zabbix`" - `Хакимов Рафаэль`

---

### Задание 1

`Установите Zabbix Server с веб-интерфейсом`

1. `Выполняя ДЗ, сверяйтесь с процессом отражённым в записи лекции`
2. `Установите PostgreSQL. Для установки достаточна та версия, что есть в системном репозитороии Debian 11.`
3. `Пользуясь конфигуратором команд с официального сайта, составьте набор команд для установки последней версии Zabbix с поддержкой PostgreSQL и Apache`
4. `Выполните все необходимые команды для установки Zabbix Server и Zabbix Web Server.`
5. `Заполните здесь этапы выполнения, если требуется ....`

#### Требования к результаты

1.  Прикрепите в файл README.md скриншот авторизации в админке.
2.  Приложите в файл README.md текст использованных команд в GitHub.

### Решение 1

1. Установите PostgreSQL. Для установки достаточна та версия, что есть в системном репозитороии Debian 11.

<details>

![1-01](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-01.PNG)

</details>

2. Выполните все необходимые команды для установки Zabbix Server и Zabbix Web Server

<details>

![1-02_1](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-02_1.PNG)

![1-02_2](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-02_2.PNG)

![1-02_3](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-02_3.PNG)

![1-02_4](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-02_4.PNG)

![1-02_5](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-02_5.PNG)

![1-02_6](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-02_6.PNG)

![1-02_7](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-02_7.PNG)

![1-03](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-03.PNG)

![1-03_1](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-03_1.PNG)

![1-03_2](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-03_2.PNG)

![1-03_3](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-03_3.PNG)

![1-03_4](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-03_4.PNG)

![1-03_5](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_1-03_5.PNG)

</details>

---

### Задание 2

Установите Zabbix Agent на два хоста.

#### Процесс выполнения

1.  Выполняя ДЗ, сверяйтесь с процессом отражённым в записи лекции.
2.  Установите Zabbix Agent на 2 вирт.машины, одной из них может быть ваш Zabbix Server.
3.  Добавьте Zabbix Server в список разрешенных серверов ваших Zabbix Agentов.
4.  Добавьте Zabbix Agentов в раздел Configuration > Hosts вашего Zabbix Servera.
5.  Проверьте, что в разделе Latest Data начали появляться данные с добавленных агентов.

#### Требования к результаты

1.  Приложите в файл README.md скриншот раздела Configuration > Hosts, где видно, что агенты подключены к серверу
2.  Приложите в файл README.md скриншот лога zabbix agent, где видно, что он работает с сервером
3.  Приложите в файл README.md скриншот раздела Monitoring > Latest data для обоих хостов, где видны поступающие от агентов данные.
4.  Приложите в файл README.md текст использованных команд в GitHub

### Решение

1.  Установите Zabbix Agent на 2 вирт.машины, одной из них может быть ваш Zabbix Server.

<details>

![2-01](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-01.PNG)

![2-02](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-02.PNG)

![2-02_2](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-02_2.PNG)

![2-03_1](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-03_1.PNG)

![2-03_2](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-03_2.PNG)

</details>

2. Добавьте Zabbix Server в список разрешенных серверов ваших Zabbix Agentов.

<details>

![2-04](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-04.PNG)


![2-05](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-05.PNG)

![2-06](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-06.PNG)

![2-07](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-07.PNG)

![2-08](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/img/Zabbix1_2-08.PNG)

</details>

---
