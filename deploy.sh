#!/bin/bash

# 1. Создаём ConfigMap из файла
kubectl create configmap grafana-my-dashboard \
  --from-file=global-dashboard.json \
  -n hse-coursework-health

# 2. Добавляем нужный лейбл
kubectl label configmap grafana-my-dashboard \
  grafana_dashboard=1 \
  -n hse-coursework-health


helm repo add grafana https://grafana.github.io/helm-charts

helm install grafana grafana/grafana -n hse-coursework-health -f values.yaml
