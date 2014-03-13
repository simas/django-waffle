#!/bin/bash

export PYTHONPATH=".:$PYTHONPATH"
export DJANGO_SETTINGS_MODULE="test_settings"

usage() {
    echo "USAGE: $0 [command]"
    echo "  test - run the waffle tests"
    echo "  shell - open the Django shell"
    echo "  schema - create a schema migration for any model changes"
    exit 1
}

case "$1" in
    "test" )
        django-admin.py test waffle ;;
    "shell" )
        django-admin.py shell ;;
    "schema" )
        django-admin.py schemamigration waffle --auto ;;
    * )
        usage ;;
esac
