FROM nginx:stable-alpine3.23-perl

RUN rm /etc/nginx/conf.d/default.conf

COPY proxy.conf /etc/nginx/conf.d/default.conf

RUN apk update && apk add --no-cache curl

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s CMD wget --spider -q http://localhost/ || exit 1 # silencieux, sans download la page, jute vérifier l'access

CMD ["nginx", "-g", "daemon off;"]
