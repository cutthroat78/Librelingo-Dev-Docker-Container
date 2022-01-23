FROM node:14.18.3

RUN git clone https://github.com/LibreLingo/LibreLingo.git && \
  cd LibreLingo && \
  yarn set version classic && \
  yarn
ENV PATH=/LibreLingo:$PATH

ENTRYPOINT ["yarn", "web", "dev"]