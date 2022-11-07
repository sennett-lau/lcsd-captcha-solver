FROM tensorflow/serving:nightly
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade Pillow
RUN pip3 install aocr

