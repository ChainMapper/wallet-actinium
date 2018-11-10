FROM chainmapper/walletbase-bionic-build as builder

ENV GIT_COIN_URL    https://github.com/Actinium-project/Actinium.git
ENV GIT_COIN_NAME   actinium   

RUN	git clone $GIT_COIN_URL $GIT_COIN_NAME \
	&& cd $GIT_COIN_NAME \
	&& git checkout tags/v0.18.3.0 \
	&& chmod +x autogen.sh \
	&& chmod +x share/genbuild.sh \
	&& chmod +x src/leveldb/build_detect_platform \
	&& ./autogen.sh && ./configure LIBS="-lcap -lseccomp" \
	&& make \
	&& make install

FROM chainmapper/walletbase-bionic as runtime

COPY --from=builder /usr/local/bin /usr/local/bin

RUN mkdir /data
ENV HOME /data

#rpc port & main port
EXPOSE 6666 4334

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh Actinium.conf ACM Actiniumd