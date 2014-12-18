#!/usr/local/bin/python3.4
from openpyxl import Workbook

import json

data = open('data.json')

_dict = json.load(data)

_list = _dict['data']['list']

wb = Workbook()

ws = wb.active

vips = {'8':'白金', '3':'金牌', '2':'银牌', '1':'铜牌', '0':'普通'}

keys = ['ID', '用户ID', '真实姓名', '用户姓名', 'VIP', '称呼', '手机', '其它手机', 'QQ', '交通方式', '出发地', 
	'申请时间', '状态', '是否购票', '到达时间', '到达地点'];

def get_values(row):
	values = [row['id'], row['uid'], row['realname'], row['urealname'], vips[row['vip']] + '会员', row['gender'], row['mobile'],
			row['other_mobile'], row['qq'], row['traffic'], row['comefrom'], row['addtime'], row['status_text']]
	otherfields = row['otherfields']
	if otherfields:
		if 'ticket' in otherfields.keys():
			values.append(otherfields['ticket'])
		if 'arrive_time' in otherfields.keys():
			values.append(otherfields['arrive_time'])
		if 'position' in otherfields.keys():
			values.append(otherfields['position'])
	return values

ws.append(keys);
for row in _list:
	row = get_values(row)
	ws.append(row)

wb.save('2014年会报名表.xlsx')
