# HSE Coursework: Grafana в Kubernetes

Этот репозиторий содержит Helm-чарт и скрипты для деплоя Grafana с пользовательским дашбордом и источниками данных в Kubernetes-кластере.

## Структура
- `values.yaml` — основные настройки Helm-чарта Grafana (пароль, источники данных, sidecar)
- `global-dashboard.json` — JSON-файл с глобальным дашбордом Grafana
- `deploy.sh` — автоматический деплой Grafana, дашборда и зависимостей
- `stop.sh` — удаление всех ресурсов Grafana из кластера

## Быстрый старт
1. Запустите деплой:
   ```bash
   ./deploy.sh
   ```
2. Для удаления:
   ```bash
   ./stop.sh
   ```
