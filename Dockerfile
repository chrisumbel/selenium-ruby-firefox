FROM selenium/standalone-firefox

RUN sudo apt-get update
# TODO -- get rid of build-essential
RUN sudo apt-get install -y build-essential ruby-dev git
RUN sudo gem install rspec selenium-webdriver

ADD virtual_firefox.sh /virtual_firefox.sh
ADD bashrc /home/seluser/.bashrc
ADD shrc /home/seluser/.shrc
ADD bash_profile /home/seluser/.bash_profile
ADD bash_profile /home/seluser/.profile

ENTRYPOINT ["/virtual_firefox.sh"]
