#!/bin/bash

helm repo add grafana https://grafana.github.io/helm-charts

helm install grafana grafana/grafana -n hse-coursework-health -f values.yaml
