FROM selenium/standalone-firefox

# TODO -- get rid of build-essential
RUN sudo apt-get install build-essential ruby-dev git
RUN sudo gem install rspec 

ADD virtual_firefox.sh /virtual_firefox.sh

ENTRYPOINT ["/virtual_firefox.sh"]
