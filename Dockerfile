# 1️⃣ Use a lightweight Python image
FROM python:3.11-slim

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy dependency file first (layer caching)
COPY requirements.txt .

# 4️⃣ Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy application source code
COPY app.py .

# 6️⃣ Expose Flask port
EXPOSE 5000

# 7️⃣ Start the application
CMD ["python", "app.py"]

