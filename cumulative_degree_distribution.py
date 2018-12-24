#Used powerlaw package: https://github.com/jeffalstott/powerlaw
import networkx as nx
import matplotlib.pyplot as plt
import powerlaw as pl

#The graph is read as a weighted edgelist
G = nx.Graph()
G = nx.read_weighted_edgelist('as-22july06.mtx')

#Each node in the dataset has a corresponding degree - deg references to each
#node and iterates through the degrees of the graph and sorts it
sorted_degree = sorted([deg for node, deg in G.degree()])

#cdf - cumulative distribution function is a function under the powerlaw function
pl.cdf(data=sorted_degree, survival = False)

# plot_cdf function plots the cdf - also under the powerlaw package
pl.plot_cdf(sorted_degree)

plt.show()
