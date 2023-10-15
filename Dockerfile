# Use an existing base image as a starting point
FROM julia:1.9.2

# Set metadata for the image (optional)
LABEL maintainer="Mateo Velez <mateo.velezcobian@gmail.com>"

# Set environment variables (optional)
# ENV ENV_VAR_NAME=env_var_value

# Create a working directory inside the container
WORKDIR /MyAPI

# Copy files and directories from your local machine to the container
COPY . /MyAPI

# Install dependencies (if needed)
RUN julia --project=/MyAPI -e 'using Pkg; Pkg.instantiate();'

# Expose a port (if the application inside the container listens on a specific port)
EXPOSE 8000

# Define the command to run when the container starts
CMD ["/MyAPI/bin/server"]
