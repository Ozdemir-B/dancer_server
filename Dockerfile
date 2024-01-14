FROM anibali/pytorch:2.0.1-cuda11.8

# Install dependencies
WORKDIR /app
RUN mkdir magic-animate
COPY . ./magic-animate

#RUN git clone https://github.com/magic-research/magic-animate.git
#RUN cd magic-animate

#RUN pip install omegaconf==2.3.0 diffusers==0.21.4 einops==0.6.1 accelerate==0.22.0 xformers==0.0.22 av gradio
RUN sudo apt update
RUN sudo apt install -y -qq aria2

# Give execute permissions to the script
RUN sudo chmod +x download_models.sh

# Run the script
RUN ./download_models.sh
#RUN python ./download_models.py


RUN pip install omegaconf==2.3.0 diffusers==0.21.4 einops==0.6.1 accelerate==0.22.0 xformers==0.0.22 av gradio

WORKDIR /app/magic-animate

RUN pip install -r requirements.txt

CMD ["python", "-m" ,"demo.gradio_animate"]

# Continue with the rest of your Dockerfile...
# For example, copy your application code, set environment variables, expose ports, etc.

# CMD or ENTRYPOINT to start your application