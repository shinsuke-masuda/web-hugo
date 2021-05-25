FROM gitpod/workspace-full

USER gitpod

RUN git config --global user.email "3516TE735@g.nagano-c.ed.jp"
RUN git config --global user.name "Masuda Shinsuke"

RUN brew update
RUN brew install hugo
RUN brew install gh
RUN echo "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" > ~/github_token.txt
RUN gh auth login --with-token < ~/github_token.txt
