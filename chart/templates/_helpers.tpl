{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}

{{- define "chart.fullname" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a fully qualified frontend service.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "frontend.fullname" -}}
{{- printf "frontend-service" -}}
{{- end -}}

{{/*
Create a fully qualified backend service.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "backend.fullname" -}}
{{- printf "backend-service" -}}
{{- end -}}