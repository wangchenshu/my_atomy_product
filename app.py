#!/usr/bin/env python
#-*- coding: utf-8 -*-

import requests
import shutil
import time
from bs4 import BeautifulSoup
import re
import pymysql
import csv

db = pymysql.connect("localhost", "root","","my_atomy" )
cursor = db.cursor()

base_url = 'http://www.atomy.com'
product_url = base_url + '/tw/Home/Product/MallMain'

titles = []
prices = []
points = []
csv_file = 'atomy_products.csv'

for page in range(1, 7):
    print('get next page: ', page)
    time.sleep(1)

    my_data = (
        ('LargeClass', '00'),
        ('MiddleClass', '00'),
        ('SmallClass', '00'),
        ('MatLevel', '0'),
        ('Order', 'basic'),
        ('CurrentPageNo', page),
        ('ListType', ''),
        ('CountPerPage', '24')
    )
    res = requests.post(product_url, data = my_data, stream=True)
    soup = BeautifulSoup(res.text, 'html.parser')

    # link and name
    all_title = soup.find_all("li", attrs={"class": re.compile(r"ptitle" )})
    # price
    all_price = soup.find_all("li", attrs={"class": re.compile(r"pprice" )})
    # pv
    all_point = soup.find_all("li", attrs={"class": re.compile(r"ppoint" )})

    ## save title, price and point 會員價格 元
    for i in range(len(all_title)):
        titles.append(all_title[i].text.strip())
        prices.append(all_price[i].text.strip().replace('會員價格', '').replace('元', '').replace(':', ''))
        points.append(all_point[i].text.strip().replace('PV', '').replace(':', ''))

with open(csv_file, 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['名稱', '價格', 'PV'])


    for i in range(len(titles)):
        title_str = titles[i].strip()
        price_str = ''.join(c for c in prices[i].strip() if c.isnumeric())
        point_str = points[i].strip()

        sql = "INSERT INTO products(name, price, point, updated_at) VALUES ('%s', '%s', '%s', NOW())" % (title_str, price_str, point_str)
        try:
            cursor.execute(sql)
            db.commit()
            writer.writerow([title_str, price_str, point_str])
        except Exception as ex:
            print(ex)
            db.rollback()

db.close()
