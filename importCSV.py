import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv("cleaned_data.csv")

engine = create_engine(
    "mysql+pymysql://root:cscorner@localhost/delinquency_dataset"
)

df.to_sql(
    "delinquency_data",
    con=engine,
    if_exists="replace",
    index=False
)