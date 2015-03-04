FROM base-yocto-builder

ENV NEWUSER yocto 

RUN groupadd -g 1666 docker
# RUN useradd -m $NEWUSER -p foobar
RUN useradd -m -p foobar -g docker $NEWUSER
# RUN adduser $NEWUSER docker 
#USER $NEWUSER

VOLUME [ "/yocto-builder" ]

#CMD [ "/bin/bash" ]
WORKDIR /yocto-builder
ENTRYPOINT [ "/yocto-builder/build.sh" ]
