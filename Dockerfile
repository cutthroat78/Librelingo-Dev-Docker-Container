FROM node:14.18.3

RUN git clone https://github.com/LibreLingo/LibreLingo.git
WORKDIR /LibreLingo
RUN yarn set version classic && \
  yarn

ENTRYPOINT ["yarn", "web", "dev"]