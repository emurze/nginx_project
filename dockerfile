FROM nginx:alpine3.18
COPY base.html /usr/share/nginx/html/index.html
ENV ENV /etc/env.sh
RUN echo "alias ll='ls -la'" >> "${ENV}"
EXPOSE 80
EXPOSE 81