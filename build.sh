cd /home/thedevband/golang-training-cicd
/usr/sbin/lsof -t -i tcp:8080 -s tcp:listen | xargs kill
go build -o bin/golang-training-cicd -v .
nohup ./bin/golang-training-cicd >> ./bin/log.log 2>&1 &