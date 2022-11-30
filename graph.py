import pandas as pd
import plotly.express as px

df = pd.read_csv('my_file.csv')

fig = px.line(df, x = 'Date', y = 'Close', title='Videshi Bazar - Closing price chart')
fig.show()

fig = px.line(df, x = 'Date', y = 'Open', title='Videshi Bazar - Opening price chart')
fig.show()

fig = px.line(df, x = 'Date', y = 'Low', title='Videshi Bazar - Low price chart')
fig.show()

fig = px.line(df, x = 'Date', y = 'High', title='Videshi Bazar - High price chart')
fig.show()

