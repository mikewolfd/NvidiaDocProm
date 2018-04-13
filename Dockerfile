FROM nvidia/cuda:8.0-runtime
RUN apt-get update && apt-get install -y golang-go && apt-get install -y git
RUN git clone https://github.com/zhebrak/nvidia_smi_exporter.git /nvidia_smi_exporter_git
RUN go build -a /nvidia_smi_exporter_git/nvidia_smi_exporter.go
CMD ["nvidia-smi", "daemon"]
CMD ["./nvidia_smi_exporter"]
