FROM mohdfaizkhan/rhel7nodejs9
MAINTAINER mohdfaizkhan <mohdfaizcs059@gmail.com>
RUN mkdir -p /srv/mohdfaizkhan
EXPOSE 8888
ENV PORT 8888
ADD . /srv/mohdfaizkhan
ADD index.js /srv/mohdfaizkhan
ADD package.json /srv/mohdfaizkhan
WORKDIR /srv/mohdfaizkhan
RUN npm install
CMD ["npm", "start"]
