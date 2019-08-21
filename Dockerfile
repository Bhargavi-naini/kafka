FROM openshift/base-centos7

LABEL io.k8s.description="Simple kafka Server" \
      io.k8s.display-name="Simple kafka Server" \
      io.openshift.s2i.scripts-url="image:///usr/libexec/s2i" \
      io.openshift.expose-services="8080" \
      io.openshift.tags="builder"

COPY assemble /usr/libexec/s2i/
COPY run /usr/libexec/s2i/
COPY usage /usr/libexec/s2i/

EXPOSE 8080

USER 1001

CMD [ "/usr/libexec/s2i/usage" ]
