FROM public.ecr.aws/lambda/python:3.8
# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
RUN  yum install zip unzip  -y
RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN  ./aws/install
RUN aws --version
COPY call_bash.py /var/task/ 
COPY generate_csv.sh /var/task/
RUN chmod +x  /var/task/generate_csv.sh
RUN chmod +x /var/task/call_bash.py
CMD [ "call_bash.lambda_handler" ]

