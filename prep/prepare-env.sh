sudo -u hdfs hadoop fs -chmod 777 /user
hadoop fs -put ~/dsfortelcoCDSW/data/churn.all /tmp
sudo -u hdfs hadoop  fs -chown admin:admin /tmp/churn.all
# Add CDSW environment variables for python3 like below:
# PYSPARK_PYTHON = 	/bin/python3.6
# PYSPARK_DRIVER_PYTHON	= /bin/python3.6	
hadoop fs -put data/churn.all /tmp/
chmod 755 cdsw-build.sh
mkdir -p models/spark
#on all node managers
pip3 install numpy
pip3 install sklearn
