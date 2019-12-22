#!/usr/bin/env python
#-*- coding: utf-8 -*-

import requests
import shutil
import time
from bs4 import BeautifulSoup
import re
import pymysql

db = pymysql.connect("localhost", "root","","my_atomy" )
cursor = db.cursor()

base_url = 'http://www.atomy.com'
product_url = base_url + '/tw/Home/Product/MallMain'

titles = []
prices = []
points = []
titles2 = []
prices2 = []
points2 = []

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

[titles2.append(i) for i in titles if not i in titles2]
[prices2.append(i) for i in prices if not i in prices2]
[points2.append(i) for i in points if not i in points2]

for i in range(len(titles2)):
    title_str = titles2[i].strip()
    price_str = ''.join(c for c in prices2[i].strip() if c.isnumeric())
    point_str = points2[i].strip()

    sql = "INSERT INTO products(name, price, point, updated_at) VALUES ('%s', '%s', '%s', NOW())" % (title_str, price_str, point_str)
    try:
        cursor.execute(sql)
        db.commit()
        # print('success to insert')
    except Exception as ex:
        print(ex)
        db.rollback()

db.close()