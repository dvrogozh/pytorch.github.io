FROM cimg/ruby:2.7-node

## Notedown Install
RUN sudo apt-get update && \
  sudo -H apt-get install -y python3-pip && \
  pip3 install pyrsistent==0.16 notedown pyyaml -Iv nbformat==5.7

## Configure Bot
RUN git config --global user.email "dmitry.v.rogozhkin@gmail.com"
RUN git config --global user.name "Dmitry Rogozhkin"

RUN mkdir .bundle
RUN bundle config path '~/vendor/bundle'


#COPY . pytorch.github.io
#RUN git clone https://github.com/pytorch/pytorch.github.io.git

#RUN cd pytorch.github.io && bundle install
#RUN cd pytorch.github.io && sudo yarn install --cache-folder ~/.cache/yarn

## Build Jekyll site and push to master
#RUN ./scripts/deploy-site.sh build
#RUN make build
