#!/bin/bash
/go/bin/od-database-crawler \
--crawl.connections "${CONNECTIONS}" \
--crawl.dial_timeout "${DIAL_TIMEOUT}" \
--crawl.job_buffer "${JOB_BUFFER}" \
--crawl.resume "${RESUME}" \
--crawl.retries "${RETRIES}" \
--crawl.tasks "${TASKS}" \
--crawl.timeout "${TIMEOUT}" \
--crawl.user-agent "${USER_AGENT}" \
--server.cooldown "${COOLDOWN}" \
--server.recheck "${RECHECK}" \
--server.timeout "${SERVER_TIMEOUT}" \
--server.token "${TOKEN}" \
--server.upload_chunk "${UPLOAD_CHUNK}" \
--server.upload_retries "${UPLOAD_RETRIES}" \
--server.upload_retry_interval "${UPLOAD_RETRY_INTERVAL}" \
--server.url "${URL}" \
server