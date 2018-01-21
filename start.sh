#!/bin/sh
nohup /mongodb/bin/mongod --dbpath /mongodb/db/ --logpath /mongodb/logs/logfile.log &
nohup /apache-activemq-5.15.2/bin/activemq console
