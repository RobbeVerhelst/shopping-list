FROM nginx:1.15.7-alpine as production-stage

COPY default.conf /etc/nginx/conf.d/
COPY /dist/app /usr/share/nginx/html/
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'