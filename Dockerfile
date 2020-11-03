FROM Akarata/Akarata_Project:latest

#clonning repo 
RUN git clone https://github.com/Akarata/Akarata_Project.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
