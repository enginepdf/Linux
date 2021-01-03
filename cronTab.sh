# reference : https://jdm.kr/blog/2

# crontab : scheduling

# crontab -e # editing

# crontab -l # list

# crontab -r # delete

# *(minute 0-59) *(hour 0-23) *(day 1-31) *(month 1-12) *(Mon-Sun, Day of the week 0-7, 0 and 7 is Sunday)

* * * * * ./item.sh   #  every minute

0,5,10 * * * * ./item.sh # everyday at 0,5,10 minute past every hour

0-10 9 * * * ./item.sh # every day at 9:00~9:10

0-10 9 * * 7 ./item.sh # every sunday, every minute at 9:00~9:10

*/10 * * * * ./item.sh # every 10 minute


# cron logging

* * * * * /home/script/item.sh >> /home/script/item.sh.log 2>&1 # stderr

# >> is for appending
# > is for stdout
# cat < item.txt     print the content inside

# 0 # stdin (표준 입력)
# 1 # stdout (표준 출력)
# 2 # stderr (에러 출력)
# ; # 명령의 끝을 나타낸다.
# || # 이전의 명령이 실패하면 실행하는 조건문 문자
# && # 이전의 명령이 성공하면 실행하는 조건문 문자
# & # 명령을 백그라운드에서 실행한다.
# $ # 변수에 접근할 수 있는 문자

# backup

crontab -l > /home/bak/crontab_bak.txt

# :wq
