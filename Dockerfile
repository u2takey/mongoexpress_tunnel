FROM mongo-express
ADD ./ngrok /home/
ADD ./ngrok.cfg /home/
ENV SUBDOMAIN="mongoexpress"
CMD (tini -s -- node app &) && /home/ngrok -log=stdout -config=/home/ngrok.cfg -subdomain $SUBDOMAIN 8081

