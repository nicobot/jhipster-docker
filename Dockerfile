FROM maven:3-jdk-8

RUN apt-get update && apt-get install -y \
	git \
	make \
	wget \
	zlib1g-dev \
	zip \
	vim \
	atool \
	nano \
	curl \
	wget \
	sudo \
	openssh-server \
	libnotify-bin \
	locate

RUN echo ". /root/docker_root/templates/.bashrc" >> ~/.bashrc

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y \
	nodejs
	

# Install Gulp globally
RUN npm install -g gulp
# Install Gulp locally
RUN npm install gulp

# Install Bower
RUN npm install -g bower

# Install protractor
RUN npm install -g protractor

# Bashmarks
RUN git clone git://github.com/huyng/bashmarks.git && cd bashmarks && make install
RUN echo "source ~/.local/bin/bashmarks.sh" >> ~/.bashrc

# Test drivers: http://docs.seleniumhq.org/download/ | https://www.npmjs.com/package/selenium-webdriver
# Chrome test driver | npm install chromedriver
RUN cd /opt/ && wget http://chromedriver.storage.googleapis.com/2.22/chromedriver_linux64.zip && cd -
# InternetExplorer | npm install iedriver
RUN cd /opt/ && wget http://selenium-release.storage.googleapis.com/2.53/IEDriverServer_x64_2.53.1.zip && cd -
# Opera | npm install operadriver
RUN cd /opt/ && wget https://github.com/operasoftware/operachromiumdriver/releases/download/v0.2.2/operadriver_linux64.zip && cd -
# Safari

# Update files db
RUN updatedb
