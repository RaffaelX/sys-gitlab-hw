# Домашнее задание к занятию 1 «Disaster recovery и Keepalived» - `Хакимов Рафаэль`

### Цель задания
В результате выполнения этого задания вы научитесь:
1. Настраивать отслеживание интерфейса для протокола HSRP;
2. Настраивать сервис Keepalived для использования плавающего IP

------

### Чеклист готовности к домашнему заданию

1. Установлена программа Cisco Packet Tracer
2. Установлена операционная система Ubuntu на виртуальную машину и имеется доступ к терминалу
3. Сделан клон этой виртуальной машины, они находятся в одной подсети и имеют разные IP адреса
4. Просмотрены конфигурационные файлы, рассматриваемые на лекции, которые находятся по [ссылке](1/)


------

### Инструкция по выполнению домашнего задания

1. Сделайте fork [репозитория c шаблоном решения](https://github.com/netology-code/sys-pattern-homework) к себе в Github и переименуйте его по названию или номеру занятия, например, https://github.com/имя-вашего-репозитория/gitlab-hw или https://github.com/имя-вашего-репозитория/8-03-hw).
2. Выполните клонирование этого репозитория к себе на ПК с помощью команды git clone.
3. Выполните домашнее задание и заполните у себя локально этот файл README.md:
   - впишите вверху название занятия и ваши фамилию и имя;
   - в каждом задании добавьте решение в требуемом виде: текст/код/скриншоты/ссылка;
   - для корректного добавления скриншотов воспользуйтесь инструкцией [«Как вставить скриншот в шаблон с решением»](https://github.com/netology-code/sys-pattern-homework/blob/main/screen-instruction.md);
   - при оформлении используйте возможности языка разметки md. Коротко об этом можно посмотреть в [инструкции по MarkDown](https://github.com/netology-code/sys-pattern-homework/blob/main/md-instruction.md).
4. После завершения работы над домашним заданием сделайте коммит (git commit -m "comment") и отправьте его на Github (git push origin).
5. Для проверки домашнего задания преподавателем в личном кабинете прикрепите и отправьте ссылку на решение в виде md-файла в вашем Github.
6. Любые вопросы задавайте в чате учебной группы и/или в разделе «Вопросы по заданию» в личном кабинете.



------


### Задание 1
- Дана [схема](1/hsrp_advanced.pkt) для Cisco Packet Tracer, рассматриваемая в лекции.
- На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
- Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
- Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
- На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

### Решение 1

<details>

![Keepalived1-01](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_1.PNG)

![Keepalived1-02](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_2.PNG)

![Keepalived1-03](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_3.PNG)

![Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_4.PNG](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_4.PNG "Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_4.PNG")

[Схема pkt](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/hsrp_advanced.pkt "pkt файл") 

</details>

------


### Задание 2
- Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного [файла](1/keepalived-simple.conf).
- Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
- Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
- Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
- На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

### Решение

<details>

![2-01](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_7.PNG)

![Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_8.PNG](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_8.PNG "Image not found: https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_8.PNG")

![2-03](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_9.PNG)

![2-04](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_10.PNG)

![2-05](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_11.PNG)

![2-06](https://github.com/RaffaelX/sys-gitlab-hw/blob/main/keepalived/img/Disaster%20Recovery.%20FHRP%20и%20Keepalived_12.PNG)

</details>

#### keepalived.conf 

<details>

```bash
rrp_script check_nginx {
    script "/home/adminr/bash.sh"
    interval 3
}

vrrp_instance VI_1 {
    state MASTER
    interface enp0s8
    virtual_router_id 15
    priority 205
    advert_int 1
    virtual_ipaddress {
        192.168.122.15/24
    }
    track_script {
        check_nginx
    }
}
```
</details>

#### bash.sh

<details>

```bash
#!/bin/bash
if [[ $(bash -c "</dev/tcp/localhost/80" && echo $?) ]] && [[ -f /var/www/html/>
        exit 0
else
        sudo systemctl stop keepalived.service
fi
```

</details>

------

## Дополнительные задания со звёздочкой*

Эти задания дополнительные. Их можно не выполнять. На зачёт это не повлияет. Вы можете их выполнить, если хотите глубже разобраться в материале.
 
### Задание 3*
- Изучите дополнительно возможность Keepalived, которая называется vrrp_track_file
- Напишите bash-скрипт, который будет менять приоритет внутри файла в зависимости от нагрузки на виртуальную машину (можно разместить данный скрипт в cron и запускать каждую минуту). Рассчитывать приоритет можно, например, на основании Load average.
- Настройте Keepalived на отслеживание данного файла.
- Нагрузите одну из виртуальных машин, которая находится в состоянии MASTER и имеет активный виртуальный IP и проверьте, чтобы через некоторое время она перешла в состояние SLAVE из-за высокой нагрузки и виртуальный IP переехал на другой, менее нагруженный сервер.
- Попробуйте выполнить настройку keepalived на третьем сервере и скорректировать при необходимости формулу так, чтобы плавающий ip адрес всегда был прикреплен к серверу, имеющему наименьшую нагрузку.
- На проверку отправьте получившийся bash-скрипт и конфигурационный файл keepalived, а также скриншоты логов keepalived с серверов при разных нагрузках


------

### Правила приема работы

1. Необходимо следовать инструкции по выполнению домашнего задания, используя для оформления репозиторий Github
2. В ответе необходимо прикладывать требуемые материалы - скриншоты, конфигурационные файлы, скрипты. Необходимые материалы для получения зачета указаны в каждом задании.


------

### Критерии оценки

- Зачет - выполнены все задания, ответы даны в развернутой форме, приложены требуемые скриншоты, конфигурационные файлы, скрипты. В выполненных заданиях нет противоречий и нарушения логики
- На доработку - задание выполнено частично или не выполнено, в логике выполнения заданий есть противоречия, существенные недостатки, приложены не все требуемые материалы.
