FROM python:3.6.7-alpine

WORKDIR /src

COPY . .
# Copies all of the files from the directory on the actual machine.

RUN apk add --no-cache ffmpeg libsm libxext lapack-dev musl-dev linux-headers g++ && \
    pip install --upgrade pip && \
    pip install -r requirements.txt && \
    rm requirements.txt && \
    addgroup -S appgroup && adduser -S appuser -G appgroup
# Gets apk source lists but does not save them. Installs ffmpeg, libsm, libxext, lapack-dev, musl-dev, linux-headers, and g++
# Updates PIP
# Installs the rest of the dependencies with PIP
# Deletes the PIP dependency list
# Creates a new local user account

USER appuser
# Assigns the new local user account to be used in the container

CMD ["python", "-u", "app.py"]
