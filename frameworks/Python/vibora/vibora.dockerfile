FROM python:3.6.6-stretch

ADD ./ /vibora

WORKDIR /vibora

RUN pip3 install -r /vibora/requirements.txt
RUN git clone https://github.com/vibora-io/vibora.git
RUN cd vibora && python build.py && python setup.py install

EXPOSE 8000

CMD ["python3", "app.py"]
