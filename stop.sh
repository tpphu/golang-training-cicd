lsof -t -i tcp:8080 -s tcp:listen | xargs kill