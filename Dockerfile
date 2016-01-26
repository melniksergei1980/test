FROM node

RUN apt-get update
RUN apt-get install -y git


WORKDIR  home/
RUN git clone https://github.com/melniksergei1980/test.git
WORKDIR /home/test 
RUN npm install

EXPOSE 8080

CMD ["node", "hello.js"]
