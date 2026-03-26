#!/bin/bash

HELM_RELEASE="hello world"
NAMESPACE="default"
VALUES="../helm/values.yaml"

kubectl get ns "$NAMESPACE" >/dev/null 2>&1 || kubectl create ns "$NAMESPACE"

helm upgrade --install "$HELM_RELEASE" "$HELM_CHART" \
  -n "$NAMESPACE" -f "$VALUES" --create-namespace

helm status "$HELM_RELEASE" -n "$NAMESPACE"
