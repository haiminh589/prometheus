# Prometheus
## Monitoring with Prometheus and Grafana 
### 1. Prometheus Architecture  
__Prometheus's main features are__:  
- a multi-dimensional data model with time series data identified by metric name and key/value pairs
- PromQL, a flexible query language to leverage this dimensionality
- no reliance on distributed storage; single server nodes are autonomous
- time series collection happens via a pull model over HTTP
- pushing time series is supported via an intermediary gateway
- targets are discovered via service discovery or static configuration
- multiple modes of graphing and dashboarding support

![image](https://user-images.githubusercontent.com/75883087/164673751-4476ad58-0289-4d46-9c8e-9bf2f3712ed8.png)
