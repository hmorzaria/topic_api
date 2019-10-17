# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.
library(plumber)
r <- plumb("/topic_api/my_api/Sentiment_analysis_functions.R")
r$run(port=80, host="0.0.0.0")