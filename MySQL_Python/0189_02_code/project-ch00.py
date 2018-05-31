#!/usr/bin/env python

# Copyright 2009 Albert Lukaszewski
# Developed for Chapter 2 of "Python MySQL Database Access" [PACKT]
#
# invoke with '-h' for help on syntax:
# python ./project-ch2.py -h

import MySQLdb

mydb = MySQLdb.connect(host = 'localhost', user = 'root', passwd = '5494983', db = 'infosec')
cur = mydb.cursor()

statement = "SELECT * FROM activos"
command = cur.execute(statement)
results = cur.fetchall()

column_list = []
for record in results:
	print(record[0:])
        

