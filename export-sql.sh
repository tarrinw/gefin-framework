#!/bin/sh
DBHOST=localhost
DBUSER=dbuser
DBPASS=dbpass
DATE=`date`
echo "-- GEFIN db dump (setup data only)"
echo "-- $DATE"
echo ""
mysqldump -h $DBHOST -u $DBUSER -p$DBPASS -w 'id=1' ends gefin_project gefin_user gefin_user_project gefin_analytics_event
mysqldump -h $DBHOST -u $DBUSER -p$DBPASS -w "table_name LIKE 'gefin%'" ends gefin_col gefin_tab gefin_form
mysqldump -h $DBHOST -u $DBUSER -p$DBPASS -w 'gefin_project_id=1' ends gefin_component gefin_head gefin_query gefin_tab_project
mysqldump -h $DBHOST -u $DBUSER -p$DBPASS -w 'id<100' ends gefin_page gefin_page_component
mysqldump -h $DBHOST -u $DBUSER -p$DBPASS -w '1=1' ends gefin_settings
mysqldump -h $DBHOST -u $DBUSER -p$DBPASS -w '1=0' ends gefin_analytics gefin_log gefin_log_datapoint gefin_bookmark gefin_object_blob gefin_object_text gefin_update gefin_xml gefin_page_component_tab
