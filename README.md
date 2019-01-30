# journald-ddos
A simple script that is intended on bringing down journald for testing purposes.

Get this on Docker Hub now: https://hub.docker.com/r/seansackowitz/journald-ddos

If you have EFK stack set up, you should be able to monitor your journald system to verify if you are losing logs.

This docker container will produce logs in the following format:
```$UUID $LINE_NUMBER```

A sample run of this looks like this, just with a lot more:
```
e54472ed-b484-479a-94b5-165b67e9a3d3 1
e54472ed-b484-479a-94b5-165b67e9a3d3 2
e54472ed-b484-479a-94b5-165b67e9a3d3 3
e54472ed-b484-479a-94b5-165b67e9a3d3 4
e54472ed-b484-479a-94b5-165b67e9a3d3 5
e54472ed-b484-479a-94b5-165b67e9a3d3 6
e54472ed-b484-479a-94b5-165b67e9a3d3 7
e54472ed-b484-479a-94b5-165b67e9a3d3 8
e54472ed-b484-479a-94b5-165b67e9a3d3 9
e54472ed-b484-479a-94b5-165b67e9a3d3 10
```

## Monitoring for lost logs
### Using Kibana
You should be able to go into kibana, and search for the container name, with the UUID value of that particular run (it is generated once at the start of the container).

When Kibana returns a count of hits of the UUID, verify that the count is equal to the total number of lines as the last value that the container produced.
