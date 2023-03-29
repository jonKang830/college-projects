import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import sklearn
from sklearn import tree
from sklearn.metrics import mean_squared_error
import graphviz
import datetime
from statsmodels.tsa.api import ExponentialSmoothing, SimpleExpSmoothing, Holt
import seaborn as sns
from pathlib import Path
from shiny import *

###
# Input
url = "https://data.cityofchicago.org/api/views/ijzp-q8t2/rows.csv?accessType=DOWNLOAD"
original_data = pd.read_csv(url)
reduced_data = original_data[(original_data["Year"] == 2019) |
                             (original_data["Year"] == 2020) |
                             (original_data["Year"] == 2021) |
                             (original_data["Year"] == 2022) ]
data = reduced_data.copy() 
model_data = data.copy()
model_data["CrimeCategories"] = 0
CrimesAgainstPerson = ["BATTERY", "ASSAULT", 'ARSON', 'HOMICIDE','CRIM SEXUAL ASSAULT',
                        'CRIMINAL SEXUAL ASSAULT', 'PROSTITUTION', 'SEX OFFENSE', 'PUBLIC INDECENCY',
                        'THEFT','ROBBERY','BURGLARY','STALKING','KIDNAPPING','INTIMIDATION']
model_data.loc[model_data['Primary Type'].isin(CrimesAgainstPerson),"CrimeCategories"] = 1
# Convert date to datetime format
model_data["Date"] = pd.to_datetime(model_data["Date"])
model_data["Day"] = model_data["Date"].dt.dayofweek
model_data["Day"] = model_data["Date"].dt.dayofweek # 0 = Monday, 6 = Sunday
model_data["Time"] = ((model_data["Date"].dt.time).astype(str).str.replace(":","")).astype(int)
model_data["Year"] = (model_data["Date"].dt.year).astype(int)
model_data = model_data[["ID", "Primary Type", "Description", "Location Description", "Beat", "District",'Ward','Community Area', "CrimeCategories", "Day", "Time", "Year"]]
model_data = model_data.dropna()
# Build Model A
model_A = model_data[["Year", "CrimeCategories", "Day", "Time", "Community Area", "Location Description"]]
model_A = pd.get_dummies(model_A)
model_A_train = model_A[(model_A["Year"] >= 2019) & (model_A["Year"] < 2022)]
model_A_test = model_A[(model_A["Year"] >= 2022)]
model_A_train = model_A_train.drop(columns = ['Year'])
model_A_test = model_A_test.drop(columns = ['Year'])
# model_A_train
X_train = model_A_train.drop(columns = ['CrimeCategories'])
y_train = model_A_train["CrimeCategories"]
X_test = model_A_test.drop(columns = ['CrimeCategories'])
y_test = model_A_test["CrimeCategories"]
# Build tree
dtree = tree.DecisionTreeClassifier(criterion="gini", max_leaf_nodes=30, max_depth=12)
dtree.fit(X_train, y_train)

# y_pred = dtree.predict(X_test)
###

app_ui = ui.page_fluid(
  ui.h2("Decision Tree Result! v2"),
  ui.input_slider("day", "Day of the Week (0 = Monday, 6 = Sunday)", 0, 6, 0), # Day (0-6) Slider
  ui.input_numeric("time", "Time of Criminal Activity (0 - 235959)", 120000), # Time (0 - 235959) Input
  ui.input_numeric("area", "Community Area (1.0 - 77.0)", 1.0), # Community Area (1.0 - 77.0) Input
  
  ui.input_select(
          "loc_desc",
          "Choose a Location Description:",
          choices = pd.Series(X_test.columns[X_test.columns.str.contains("Location")])
        ),

  # ui.output_text_verbatim("txt"),
  ui.output_text_verbatim("loc_desc_output"),
  ui.input_action_button("run", "Run Prediction", class_="btn-success"),
  ui.output_text_verbatim("pred_result"),
  # ui.output_plot("plot")
  
)

# Part 2: server ----
def server(input, output, session):
  # @output
  # @render.text
  # @reactive.event(lambda: input.run(), ignore_none=False)
  # def txt():
  #   return f"Day is {input.day()}"
  
  @output
  @render.text
  # @reactive.event(lambda: input.run(), ignore_none=False)
  def loc_desc_output():
    return f"Location Description Chosen: {input.loc_desc()}"

  # @output
  # @render.text
  # @reactive.event(lambda: input.run(), ignore_none=False)
  # def plot():
  #   # fig, ax = plt.subplots()
  #   # ax.figure(figsize=(20, 12), dpi=80)
  #   tree.plot_tree(dtree)
  #   pass
  
  @output
  @render.text
  @reactive.event(lambda: input.run(), ignore_none=False)
  def pred_result():
    temp = X_test.head(1).reset_index(drop=True)
    for col in temp.columns:
      temp[col].values[:] = 0
    temp["Day"] = int(input.day())
    temp["Time"] = int(input.time())
    temp["Community Area"] = float(input.area())
    description = int(input.loc_desc())
    temp.iloc[:,description + 3] = 1
    # display(temp)
    prediction_result = int(dtree.predict(temp))
    # prediction_result
    if prediction_result == 1:
      return f"Result = 1. It is likely that the crime will be a Crime Against a Person"
    else:
      return f"Result = 0. It is unlikely that the crime will be a Crime Against a Person"  

  # Receive User Input

# Combine into a shiny app.
# This is a shiny.App object. 
# Note: that the variable must be "app".
app = App(app_ui, server)
