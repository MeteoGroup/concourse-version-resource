FROM ekarge/toolbelt:jq

COPY resource /opt/resource

ENTRYPOINT [ "/bin/sh" ]
