# ===============================
# Base Image
# ===============================
FROM node:22-bookworm

# ===============================
# Install SWI-Prolog
# ===============================
RUN apt-get update && \
    apt-get install -y swi-prolog && \
    rm -rf /var/lib/apt/lists/*

# ===============================
# Working directory inside container
# ===============================
WORKDIR /app

# ===============================
# Copy package files
# ===============================
COPY package*.json ./

# ===============================
# Install Node packages
# ===============================
RUN npm install

# ===============================
# Copy the rest of the backend
# ===============================
COPY . .

# ===============================
# Render supplies PORT automatically
# ===============================
EXPOSE 5000

# ===============================
# Start the server
# ===============================
CMD ["npm", "start"]