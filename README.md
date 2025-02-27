# Stock-Market-AI
## Stock Market Prediction & Trading Bot using AI

### Stock Market Prediction with LSTM Networks
Long Short-Term Memory (LSTM) networks are a special type of Recurrent Neural Network (RNN) designed to capture long-term dependencies. Introduced by Hochreiter and Schmidhuber (1997) and later refined, LSTMs are now widely used for various problems. They are particularly effective in avoiding the vanishing gradient problem, making them ideal for stock market prediction.

Unlike standard RNNs, which use a simple repeating module (e.g., a tanh layer), LSTMs have a more complex structure with four interacting layers, allowing them to learn better over long sequences.

### Stock Market Agent with Evolution Strategy
Despite its name, the Evolution Strategy algorithm is one of the simplest methods for exploring complex landscapes. In a reinforcement learning context, it is used to optimize an agent's parameters (weights and biases) in a neural network to maximize its reward.

In stock trading, the agent interacts with an environment (such as a stock price chart), taking actions like buying, selling, or holding. The goal is to maximize returns by finding the best possible parameters for the agent's neural network.

Requirements
To run the project, ensure you have the following dependencies installed:

Python ^3.8.0: 
Django:
Numpy: 
TensorFlow: 
Keras: 
Seaborn: 
Yahoo Finance: 
Pandas: 
Matplotlib: 

Usage
Starting the Server
Start the Django server using the following command:


`python manage.py runserver`

Once the server is running, you'll have three options on the main page:

1. Stock Info

Enter the stock symbol and the duration for which you'd like to fetch the data. The information will be retrieved using the Yahoo Finance library and displayed as a graph using Matplotlib and mpld3.
The data table shows the stock details, and the closing prices are graphed. Hovering over a point will display a tooltip with the date and closing price.

2. Prediction
Input the stock symbol, training period, number of simulations to run, and the number of future days to predict.
The simulation results are graphed, and hovering over the points will display tooltips with the date and closing price.

3. Trading Agent
Provide the stock symbol, data period, initial fund, and the number of days to skip between buy/sell actions.
The graph will display the stock's closing prices with buy/sell markers. Hovering over a marker will show the date and the action taken on that day.

4. Docker Usage
To build and run the project with Docker:

`docker build -t smag:latest . `
`./runOnceDocker.sh `
`python manage.py runserver `
