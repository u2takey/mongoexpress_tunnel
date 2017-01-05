# mongoexpress_tunnel

use ngrok service here : http://qydev.com/


## usage
docker run -p 8002:8081 --net=host  --restart=always --name qcos-mongo-express \
-e ME_CONFIG_MONGODB_SERVER=$mong_addr \
-e SUBDOMAIN=$subdomain \
u2takey/mongo_tunnel

see mongo_express at http://$subdomain.tunnel.qydev.com/
