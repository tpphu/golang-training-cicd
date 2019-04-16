lsof -t -i tcp:8080 -s tcp:listen | xargs kill
nohup ./bin/golang-training-cicd >> ./bin/log.log &