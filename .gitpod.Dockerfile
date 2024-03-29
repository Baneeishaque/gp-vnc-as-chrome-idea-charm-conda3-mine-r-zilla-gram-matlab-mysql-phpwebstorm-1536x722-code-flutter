FROM baneeishaque/gp-vnc-zsh-as-gh-chrome-idea-charm-conda3-mine-r-zilla-gram-matlab-mysql-phpwebstorm-1536x722-code

### Install Flutter
# dependencies
RUN sudo apt update \
 && sudo apt install -y \
     libglu1-mesa \
 && sudo rm -rf /var/lib/apt/lists/*

ARG flutterSdkDownloadUrl="https://storage.googleapis.com/flutter_infra_release/releases/beta/linux/flutter_linux_1.26.0-17.8.pre-beta.tar.xz"

RUN sudo wget -qO $HOME/flutter_sdk.tar.xz $flutterSdkDownloadUrl \
 && sudo tar -xvf $HOME/flutter_sdk.tar.xz -C $HOME \
 && sudo rm $HOME/flutter_sdk.tar.xz
    
ENV PATH="$PATH:$HOME/flutter/bin"

# TODO : Fix permission
# RUN flutter config --enable-web \
#  && flutter precache
