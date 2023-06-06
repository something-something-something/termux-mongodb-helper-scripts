#!/bin/bash

mkdir -p ~/mongo/dbpath1
mkdir -p ~/mongo/dbpath2
mkdir -p ~/mongo/dbpath3
mkdir -p ~/mongo/log1
mkdir -p ~/mongo/log2
mkdir -p ~/mongo/log3


mongod --dbpath ~/mongo/dbpath1 --logpath ~/mongo/log1/mongo1.log --replSet localrep --bind_ip localhost --pidfilepath ~/mongo/pid1.pid --port 27017 &
mongod --dbpath ~/mongo/dbpath2 --logpath ~/mongo/log2/mongo2.log --replSet localrep --bind_ip localhost --pidfilepath ~/mongo/pid2.pid --port 27027 &
mongod --dbpath ~/mongo/dbpath3 --logpath ~/mongo/log3/mongo3.log --replSet localrep --bind_ip localhost --pidfilepath ~/mongo/pid3.pid --port 27037 &
