FROM registry.access.redhat.com/ubi8/nginx-118:1-46
ADD nginx.conf "${NGINX_CONF_PATH}"
COPY index.html /opt/app-root/src
CMD nginx -g "daemon off;" 