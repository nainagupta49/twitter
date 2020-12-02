{{- define "django_twitter_devops.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "django_twitter_devops.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "django_twitter_devops.image" -}}
{{- $tag := .Values.image.tag | toString -}}
{{- printf "%s:%s" .Values.image.name $tag -}}
{{- end -}}
