FROM mrismanaziz/man-userbot:slim-buster

RUN git clone -b Man-Userbot https://github.com/itgoodev/manbot-45678 /home/theusersbot/ \
    && chmod 777 /home/theusersbot \
    && mkdir /home/theusersbot/bin/
WORKDIR /home/theusersbot/
RUN pip install -r requirements.txt
CMD [ "bash", "start" ]
