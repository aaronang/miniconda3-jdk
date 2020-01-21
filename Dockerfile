FROM continuumio/miniconda3:4.7.12

ENV JAVA_HOME /opt/jdk-13.0.2
ENV PATH $JAVA_HOME/bin:$PATH

RUN wget https://download.java.net/java/GA/jdk13.0.2/d4173c853231432d94f001e99d882ca7/8/GPL/openjdk-13.0.2_linux-x64_bin.tar.gz \
    && tar xf openjdk-13.0.2_linux-x64_bin.tar.gz \
    && mv jdk-13.0.2 $JAVA_HOME \
    && rm openjdk-13.0.2_linux-x64_bin.tar.gz