# An framework bash for community:

# syntax=docker/dockerfile:1
FROM ubuntu:18.04
COPY . /app
RUN make /app
CMD python /app/app.py

docker build -<<EOF
FROM busybox
RUN echo "hello world"
EOF

# It's necessary that Docker Desktop installed.