social-graph
======

Extended profile attributes for a Rocket.Chat community. Planned features include social graphing. Based on [gigawhitlock's voting](https://github.com/gigawhitlocks/voting/)

Requirements
------------
- docker

Running
-------

Edit `social_graph.py` and `Dockerfile` if necessary to change paths to the database.
Edit ROCKETCHAT_URL in `social_graph.py` to point to the root domain of your Rocket.Chat instance.

```
docker build -t yourname/social_graph .
docker run -d -p 5000:5000 -v /etc/localtime:/etc/localtime -v /opt/social-graph:/opt/social-graph --name="social_graph" yourname/social_graph flask run -h 0.0.0.0 -p 5000

```

You can then access from `http://localhost:5000/`.
