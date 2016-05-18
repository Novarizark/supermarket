# -*- coding:utf-8 -*-
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from datetime import datetime
from test_stationarity import test_stationarity 
plt.style.use('presentation')

daily_flow_head = ['date', 'flow']
daily_flow_a = pd.Series.from_csv('../data/daily-flow-full-record/flow/daily-flow-A', parse_dates=True)

fc_daily_flow_a=daily_flow_a[datetime(2014,1,1):]

test_stationarity(fc_daily_flow_a)
#print daily_flow
'''lineplot_a = plt.plot(fc_daily_flow_a,'b-', linewidth=2.0, alpha=0.8, label="JiHua")

plt.xlabel('Date')
plt.ylabel('Customer Flow')
plt.title('Daily Customer Flow')
plt.legend()
plt.show()'''
