#!/bin/sh
nohup /mongodb/bin/mongod --dbpath /mongodb/db/ --logpath /mongodb/logs/logfile.log &
nohup /redis-4.0.6/src/redis-server --protected-mode no &
nohup /apache-activemq-5.15.2/bin/activemq console
