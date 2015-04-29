#!/bin/bash

fw_depends java7 sbt

sed -i 's|database_host|'"${DBHOST}"'|g' src/main/scala/scruffy/examples/Test2Endpoint.scala

sbt assembly

java -jar target/scala-2.11/scruffy-benchmark-assembly-10.1.jar -Dhostname=$DBHOST &
