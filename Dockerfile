FROM debian:buster-slim
RUN apt-get update && apt-get install --no-install-recommends -y \
   git-core \
   git-svn \
   ruby \
   subversion \
   && rm -rf /var/lib/apt/lists/*
RUN gem install svn2git

WORKDIR /git
ENTRYPOINT ["svn2git"]
