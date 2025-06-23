#!/bin/bash

kubectl delete configmap grafana-my-dashboard \
  -n hse-coursework-health

kubectl delete configmap grafana-monitoring-dashboard \
  -n hse-coursework-health

helm delete grafana -n hse-coursework-health || true
helm uninstall grafana -n hse-coursework-health || true
helm repo remove grafana || true
kubectl delete -f values.yaml -n hse-coursework-health || true
kubectl delete pvc -l app.kubernetes.io/instance=grafana -n hse-coursework-health || true
kubectl delete all,configmap,secret --selector=app.kubernetes.io/instance=grafana -n hse-coursework-health || true
