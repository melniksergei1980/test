FROM node

RUN apt-get update
RUN apt-get install -y git


RUN cd home/
RUN git clone https://github.com/melniksergei1980/test.git
RUN cd /home/test 
RUN cd /web; npm install

EXPOSE 80

CMD ["node", "home/test/hello.js"]
