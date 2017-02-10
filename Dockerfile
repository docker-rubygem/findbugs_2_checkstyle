FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.2

RUN gem install findbugs_2_checkstyle --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["findbugs_2_checkstyle"]
CMD ["--help"]
