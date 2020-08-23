import subprocess as sp
import sys

def bash(command):
    sp.call(['bash', '-c', command])

argument = sys.argv[1]

if argument=='z':
    bash('zookeeper-server-start ~/kafka_2.12-2.3.0/config/zookeeper.properties')
elif argument=='s':
    bash('kafka-server-start ~/kafka_2.12-2.3.0/config/server.properties')
elif argument=='sch':
    bash('schema-registry-start ~/confluent-5.3.1/etc/schema-registry/schema-registry.properties')
elif argument=='ksql':
    bash('ksql-server-start ~/confluent-5.3.1/etc/ksql/ksql-server.properties')
elif argument=='cd':
    bash('connect-distributed ~/confluent-5.3.1/etc/kafka-connect-jdbc/connect-avro-distributed.properties')
else:
    bash('pwd')