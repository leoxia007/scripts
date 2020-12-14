export DEBIAN_FRONTEND=noninteractive && dpkg --add-architecture i386 && \
	apt-get update && \
	(yes "" | apt-get install -y -o DPkg::options::="--force-confdef" -o DPkg::options::="--force-confold" \
		build-essential \
		imagemagick \
		xorriso \
		locales \
		openjdk-8-jdk \
        python-is-python3 \
		git \
		m4 \
		unzip \
		bison \
		zip \
		gperf \
        libncurses5 \
		libxml2-utils \
		zlib1g:i386 \
		libstdc++6:i386 \
		bc \
		curl \
		lzop \
		lzip \
		lunzip \
		squashfs-tools \
		sudo \
		xmlstarlet \
		python3-pip \
		git \
       wget \
       xattr \
       )
curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo; chmod 0755 /usr/bin/repo
git config --global user.name "xialei007" && \
	git config --global user.email "xialei198785@gmail.com" && \
	git config --global color.ui auto
