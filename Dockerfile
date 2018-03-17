FROM python:2
RUN apt-get update \
 && apt-get install -yq sqlite \
 && rm -rf /var/lib/apt/lists/*
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
ENV SOCIAL_SECRET_KEY='ADD A SECRET HERE'
ENV FLASK_APP='/opt/social-graph/social_graph.py'
ENV FLASK_DEBUG=1
