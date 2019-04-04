#!/bin/bash
# Fetch some events from stackdriver
set -ex
POD=$1

OUTFILE=~/tmp/${POD}.log.txt
gcloud --project=kubeflow-ci logging read --format="table(timestamp, resource.labels.container_name, textPayload)" \
	--freshness=24h \
	--order asc  \
	"resource.type=\"k8s_container\" resource.labels.pod_name=\"${POD}\"  " > ${OUTFILE}

cat ${OUTFILE}
echo Logs written to ${OUTFILE}