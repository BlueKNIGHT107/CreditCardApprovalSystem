#!/bin/sh
echo "Waiting for postgres..."
while ! nc -z $SQL_HOST $SQL_PORT; do
    echo "Waiting for $SQL_HOST:$SQL_PORT..."
    sleep 0.1
done

echo "PostgreSQL started"

