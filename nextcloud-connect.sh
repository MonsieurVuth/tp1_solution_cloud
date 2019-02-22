#!/bin/bash
mkdir sauvegarde-bdd
mkdir sauvegarde-bdd/completes
mkdir sauvegarde-bdd/incre

ssh root@192.168.33.200 'bash -s' <  mysqlSaveBdd.sh

