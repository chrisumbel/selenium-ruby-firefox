FROM selenium/standalone-firefox

RUN sudo apt-get update
# TODO -- get rid of build-essential
RUN sudo apt-get install -y build-essential ruby-dev git
RUN sudo gem install rspec 

ADD virtual_firefox.sh /virtual_firefox.sh

ENTRYPOINT ["/virtual_firefox.sh"]
