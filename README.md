# Домашнее задание к занятию "`Git`" - `Хакимов Рафаэль`


### Инструкция по выполнению домашнего задания

   1. Сделайте `fork` данного репозитория к себе в Github и переименуйте его по названию или номеру занятия, например, https://github.com/имя-вашего-репозитория/git-hw или  https://github.com/имя-вашего-репозитория/7-1-ansible-hw).
   2. Выполните клонирование данного репозитория к себе на ПК с помощью команды `git clone`.
   3. Выполните домашнее задание и заполните у себя локально этот файл README.md:
      - впишите вверху название занятия и вашу фамилию и имя
      - в каждом задании добавьте решение в требуемом виде (текст/код/скриншоты/ссылка)
      - для корректного добавления скриншотов воспользуйтесь [инструкцией "Как вставить скриншот в шаблон с решением](https://github.com/netology-code/sys-pattern-homework/blob/main/screen-instruction.md)
      - при оформлении используйте возможности языка разметки md (коротко об этом можно посмотреть в [инструкции  по MarkDown](https://github.com/netology-code/sys-pattern-homework/blob/main/md-instruction.md))
   4. После завершения работы над домашним заданием сделайте коммит (`git commit -m "comment"`) и отправьте его на Github (`git push origin`);
   5. Для проверки домашнего задания преподавателем в личном кабинете прикрепите и отправьте ссылку на решение в виде md-файла в вашем Github.
   6. Любые вопросы по выполнению заданий спрашивайте в чате учебной группы и/или в разделе “Вопросы по заданию” в личном кабинете.
   
Желаем успехов в выполнении домашнего задания!
   
### Дополнительные материалы, которые могут быть полезны для выполнения задания

1. [Руководство по оформлению Markdown файлов](https://gist.github.com/Jekins/2bf2d0638163f1294637#Code)

---

### Задание 1

1.  Зарегистрируйте аккаунт на [GitHub](https://github.com/)

 <details>

![1-01](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.1.png)

 </details>

2. Создайте новый отдельный публичный репозиторий. Обязательно поставьте галочку в поле «Initialize this repository with a README».

<details>

![1-02](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.2.png)

</details>


3. Склонируйте репозиторий, используя https протокол git clone .…

<details>

![1-03](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.3.png)

</details>

4. Перейдите в каталог с клоном репозитория.

<details>

![1-04](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.4.png "1-04")

</details>

5. Произведите первоначальную настройку Git, указав своё настоящее имя и email: git config --global user.name и git config --global user.email johndoe@example.com.

<details>

![1-05](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.5.png)

</details>

6. Выполните команду git status и запомните результат.

<details>

![1-06](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.6.png)

</details>


7. Отредактируйте файл README.md любым удобным способом, переведя файл в состояние Modified.

<details>

![1-07](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.7.png)

</details>

8. Ещё раз выполните git status и продолжайте проверять вывод этой команды после каждого следующего шага.

<details>

![1-08](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.8.png)

</details>

9. Посмотрите изменения в файле README.md, выполнив команды git diff и git diff --staged.

<details>

![1-09](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.9.png)

</details>

10. Переведите файл в состояние staged или, как говорят, добавьте файл в коммит, командой git add README.md.

<details>

![1-10](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.10.png)

</details>

11. Ещё раз выполните команды git diff и git diff --staged.

<details>

![1-11](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.11.png)

</details>

12. Теперь можно сделать коммит git commit -m 'First commit'.

<details>

![1-12](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.12.png)

</details>

13. Сделайте git push origin master.

<details>

![1-13](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/1.13.png)

</details>

[Ссылка](https://github.com/RaffaelX/gitlab-RaffaelX/commit/e4688635d0362b0094f011d912e0d1240ecbcfac)

### Задание 2
#### Что нужно сделать:

1. Создайте файл .gitignore (обратите внимание на точку в начале файла) и проверьте его статус сразу после создания.

<details>

![2-01](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/2.2.png)

</details>

2. Добавьте файл .gitignore в следующий коммит git add....

<details>

![2-02](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/2.2.png)

</details>

3. Напишите правила в этом файле, чтобы игнорировать любые файлы .pyc, а также все файлы в директории cache.
4. Сделайте коммит и пуш.
<details>

![2-03](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/2.3.png)

</details>

В качестве ответа добавьте ссылку на этот коммит в ваш md-файл с решением.
[Ссылка](https://github.com/RaffaelX/gitlab-RaffaelX/commit/866b3d73bb1f68e975edc7851ff8f277adeed3d7)

### Задание 3

#### Что нужно сделать:

1.  Создайте новую ветку dev и переключитесь на неё.

<details>

![3-01](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/3.1.png)

</details>

2. Создайте в ветке dev файл test.sh с произвольным содержимым.

<details>

![3-02](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/3.2.png)

</details>

3. Сделайте несколько коммитов и пушей в ветку dev, имитируя активную работу над файлом в процессе разработки.

<details>

![3-03](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/3.3.png)

</details>

4. Переключитесь на основную ветку.

<details>

![3-04](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/3.4.png)

</details>

5. Добавьте файл main.sh в основной ветке с произвольным содержимым, сделайте комит и пуш . Так имитируется продолжение общекомандной разработки в основной ветке во время разработки отдельного функционала в dev ветке.

<details>

![3-05](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/3.5.png)

</details>

6. Сделайте мердж dev ветки в основную с помощью git merge dev. Напишите осмысленное сообщение в появившееся окно комита.

<details>

![3-06](https://raw.githubusercontent.com/RaffaelX/sys-gitlab-hw/main/img/3.6.png)

</details>

[Ссылка](https://github.com/RaffaelX/gitlab-RaffaelX/network)

### Задание 4

`Приведите ответ в свободной форме........`

1. `Заполните здесь этапы выполнения, если требуется ....`
2. `Заполните здесь этапы выполнения, если требуется ....`
3. `Заполните здесь этапы выполнения, если требуется ....`
4. `Заполните здесь этапы выполнения, если требуется ....`
5. `Заполните здесь этапы выполнения, если требуется ....`
6. 

```
Поле для вставки кода...
....
....
....
....
```

`При необходимости прикрепитe сюда скриншоты
![Название скриншота](ссылка на скриншот)`
