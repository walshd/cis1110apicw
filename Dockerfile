FROM clue/json-server
EXPOSE 80
ADD https://raw.githubusercontent.com/walshd/cis1110apicw/main/db.json /data/
ADD https://raw.githubusercontent.com/walshd/cis1110apicw/main/index.html /data/public/
ENTRYPOINT ["json-server", "--watch", "/data/db.json", "--port", "80", "--read-only"]