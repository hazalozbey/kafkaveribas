


myArray=("WARNING" "ERROR" "INFO" "FATAL")

while true
do
	DT=`date '+%Y.%m.%d %H:%M:%S'`
	ind=`echo $RANDOM%4 | bc`	
	printf '{"filename":"wc_domain_log31562.json","date":"%s", "data1":"%s","data2":"oracle.adfinternal.view.faces.monitoring.UserActivityInfoUtils", "data3":"bpmap1","data4":"wc_atlas_1_1", "data5":"ACTIVE ExecuteThread: 25 for queue: weblogic.kernel.Default (self-tuning)", "data6":"callusrkalkan", "data7":"", "data8":"0000SsOhTB6B9DS5uFg8yX0000TG00028w","data9":"1529188633995", "data10":"ADF_FACES-30174", "data11":"An invalid or null contextId was provided when logging userActivity information for the previous request."}\n' "$DT"  "${myArray[$ind]}" | /root/kafka_2.12-3.1.0/bin/kafka-console-producer.sh --topic streaming-test --bootstrap-server 10.200.121.138:9092
	sleep_time=`echo $RANDOM%5 | bc`
	sleep $sleep_time
done


