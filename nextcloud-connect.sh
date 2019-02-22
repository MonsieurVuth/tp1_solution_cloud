#!/bin/bash
mkdir -p sauvegarde-bdd
mkdir -p sauvegarde-bdd/completes
mkdir -p sauvegarde-bdd/incre

ssh root@192.168.33.200 'bash -s' <  mysqlSaveBdd.sh

