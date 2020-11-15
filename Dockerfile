FROM node

# Set working directory, here on all command will execute in working directory (. will now represent the same)
WORKDIR /app

# copying package.json to workdir
COPY package.json /app

# 
# RUN will execute when the image is created
RUN npm install

# Every instruction in an image creates a cacheable layer - layers help with image re-building and sharing.
# until the file specified near is not changed, ex : package.json
# COPY FROM <project> TO <container file systme / Image file system>
COPY . /app  

# Docker internal port exposed - OPTIONAL
EXPOSE 80

# CMD will execute when the container is started based on the image
# Using deafult node image with our app - Custome image based on existing image
CMD ["node", "server.js"]