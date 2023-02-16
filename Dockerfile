FROM clue/json-server
EXPOSE 80
ADD https://raw.githubusercontent.com/walshd/ehuCIS1110apitask/main/db.json /data/
ADD https://raw.githubusercontent.com/walshd/ehuCIS1110apitask/main/index.html /data/public/
ENTRYPOINT ["json-server", "--watch", "/data/db.json", "--port", "80", "--read-only"]