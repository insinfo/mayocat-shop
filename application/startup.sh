#!/bin/sh

DEBUG=""
DEBUG_PORT=5005

if [ "$1" == "debug" ]
then
  DEBUG="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=$DEBUG_PORT"
fi

java \
  $DEBUG \
  -classpath "../client/src/main/resources/assets/:../themes/src/main/resources/:./target/mayocat-shop-application-1.0-SNAPSHOT.jar" \
  org.mayocat.shop.application.MayocatShopService \
  server \
  config-postgres.yml
#  config-dev.yml

