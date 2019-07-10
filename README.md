# mil-std-1553 to Elasticsearch

mil-std-1553 is a industrial control bus used by air and space craft.

IRIG 106 is a comprehensive telemetry standard to ensure interoperability in aeronautical telemetry application at RCC member ranges. It defines how to store 1553 data in Chapter 10 format.

IRIG 106 is developed and maintained by the Telemetry Group of the Range Commanders Council.

## Prerequisites
* Docker
* Filebeat
* Elasticsearch 
* Kibana

## Build and run.

1. Clone this repo.
2. Edit es_curl_setup.sh, docker_build_run.sh and filebeat.yml files with your Elasticsearch server details.
3. in your newly cloned ./mil-std-1553-es, clone  https://github.com/bbaggerman/irig106utils and https://github.com/bbaggerman/irig106utils.
