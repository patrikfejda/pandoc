FROM pandoc/ubuntu-latex

RUN mkdir -p /root/.local/share/pandoc/templates
RUN apt update && apt install -y texlive-full && rm -rf /var/lib/apt/lists/*

RUN tlmgr update --self
RUN tlmgr install adjustbox babel-german background bidi collectbox csquotes everypage filehook footmisc footnotebackref framed fvextra letltxmacro ly1 mdframed mweights needspace pagecolor sourcecodepro sourcesanspro titling ucharcat ulem unicode-math upquote xecjk xurl zref

RUN wget https://github.com/Wandmalfarbe/pandoc-latex-template/releases/download/v2.0.0/Eisvogel.zip && unzip -p Eisvogel.zip eisvogel.latex > /root/.local/share/pandoc/templates/eisvogel.latex
