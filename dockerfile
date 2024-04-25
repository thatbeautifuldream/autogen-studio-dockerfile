# Use the official Python image
FROM python:3.10-slim

# Set working directory in the container
WORKDIR /app

# Copy application files and install dependencies
COPY . .

# Upgrade pip and install dependencies
RUN --mount=type=cache,target=/root/.cache/pip pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip install autogenstudio

# Set the path
ENV PATH="/home/app/.local/bin:${PATH}"

# Set Python path
ENV PYTHONPATH="/home/app/.local/bin:/app:${PYTHONPATH}"

# Set OpenAI API key
ENV OPENAI_API_KEY="your-key-here"

# Check autogenstudio version
RUN autogenstudio version

# Expose port
EXPOSE 8081

# Set the entry point
ENTRYPOINT ["autogenstudio", "ui", "--host", "0.0.0.0", "--port", "8081"]
