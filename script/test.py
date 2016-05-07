import pandas as pd
from datetime import datetime


daily_flow_head = ['date', 'flow']
daily_flow = pd.Series.from_csv('../data/daily-flow-full-record/uniq/daily-flow-A', parse_dates=True)
print daily_flow
