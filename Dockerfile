################## Base Image ####################
FROM binfgsc/base-java:latest

################## MAINTAINER ######################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################# INSTALLATION ######################
ENV URL=http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic
ENV ZIP=Trimmomatic-0.38.zip

RUN wget $URL/$ZIP -P /opt && \
    unzip /opt/$ZIP -d /opt && \
    rm /opt/$ZIP

# create an environment varaible that hodl the location of the trimmomatic jar
ENV TRIM=/opt/Trimmomatic-0.38/trimmomatic-0.38.jar