import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import sklearn
from sklearn import tree
from sklearn.metrics import mean_squared_error
import graphviz
import datetime
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

## Location Data
data = reduced_data.copy() 
data_locations = data[["ID", "Case Number", "Block", "Location Description", "Beat", "District", "Ward", "Community Area"]]
data_locations = data_locations.dropna().astype({'Community Area': int})
data_locdesc = data_locations["Location Description"]
data_loc_counts = data_locations["Location Description"].value_counts()

## District Data
district_data = pd.read_csv("https://gist.githubusercontent.com/JasonMcGregor/d2aacb2205851d2426dd/raw/b356837c0c5fc0688164d6efabd4b96756175e44/ChicagoSocEconIndicators2008_12.csv")
district_data = district_data[["Community Area Number", "COMMUNITY AREA NAME"]]
district_data = district_data.rename(columns = {'Community Area Number':'Community Area', "COMMUNITY AREA NAME":"Community Area Name"})
data_comm = pd.merge(data_locations, district_data, how='left', on='Community Area')
data_comm = data_comm[["Community Area Name"]]

## Time
TS_data = data.copy()
TS_data["Date"] = pd.to_datetime(TS_data["Date"])
TS_data = TS_data.dropna()
TS_data["Date"] = TS_data["Date"].dt.date
TS_data = TS_data.groupby("Date").count()["ID"].reset_index(drop=False)
TS_data = TS_data.rename(columns = {"ID" : "Counts"})

# TS_interested = TS_data[(TS_data["Date"] >= datetime.date(2019, 1, 1)) &
#                         (TS_data["Date"] < datetime.date(2022, 1, 1))]
# plt.title("Daily Criminal Activity")
# plt.xlabel("Date")
# plt.ylabel("Counts")
###

app_ui = ui.page_fluid(
  ui.h2("Exploratory Graphs"),

  ui.panel_sidebar(
    ui.input_numeric("counts_min", "Crime Counts Minimum:", 1),
    ui.input_numeric("counts_max", "Crime Counts Maximum:", 9999999999),
  ),
  ui.panel_main(
    ui.output_plot("loc_desc_output"),
  ),

  ui.panel_sidebar(
    ui.input_slider("comm_count", "Visible Community Areas", 1, 77, 1),
  ),
  ui.panel_main(
    ui.output_plot("district_output"),
  ),

  ui.panel_sidebar(
    ui.input_slider("day_start", "Day Start", 1, 31, 1),
    ui.input_slider("month_start", "Month Start", 1, 12, 1),
    ui.input_slider("year_start", "Year Start", 2019, 2022, 2019),
    ui.input_slider("day_end", "Day End", 1, 31, 1),
    ui.input_slider("month_end", "Month End", 1, 12, 12),
    ui.input_slider("year_end", "Year End", 2019, 2022, 2022),
  ),
  ui.panel_main(
    ui.output_plot("time_output"),
  ),
)

# Part 2: server ----
def server(input, output, session):
  
  @output
  @render.plot(alt="Bar Chart of Location Descriptions of Criminal Activity")
  def loc_desc_output():
    data_loc_majors = data_loc_counts[
                      (data_loc_counts >= input.counts_min()) & 
                      (data_loc_counts <= input.counts_max())]
    xs = data_loc_majors.index.tolist()

    fig, ax = plt.subplots()
    ax.barh(xs, data_loc_majors)
    # ax.title("Counts of Location Description")
    return fig

  @output
  @render.plot(alt="Pie Chart of Criminal Activities in each Community Area")
  def district_output():
    data_comm_counts = data_comm.value_counts()[0:input.comm_count()]
    labels = data_comm_counts.index.to_list()
    fig1, ax1 = plt.subplots()
    ax1.pie(data_comm_counts, labels=labels, startangle=90)
    # ax1.axis('equal')
    # ax1.title("Number of Criminal Activity in Community Areas by Descending Order")
    return fig1
  
  @output
  @render.plot(alt="Line Plot of Daily Criminal Activity Count")
  def time_output():
    TS_interested = TS_data[(TS_data["Date"] >= datetime.date(input.year_start(), input.month_start(), input.day_start())) &
                            (TS_data["Date"] < datetime.date(input.year_end(), input.month_end(), input.day_end()))]
    
    xvals = TS_interested["Date"]
    yvals = TS_interested["Counts"]

    fig2, ax2 = plt.subplots()
    ax2.plot(xvals, yvals)
    # ax2.title("Daily Criminal Activity")
    # ax2.xlabel("Date")
    # ax2.ylabel("Counts")
    return fig2

app = App(app_ui, server)
