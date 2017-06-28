# Build using:
#   docker build -t trion/angular-app .

FROM nginx:alpine

ENV PORT=8080
EXPOSE 8080
COPY dist /usr/share/nginx/html/
COPY nginx/default.conf /etc/nginx/conf.d/default.conf.template

RUN chown -R nginx /etc/nginx

CMD ["/bin/sh","-c","envsubst '$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
