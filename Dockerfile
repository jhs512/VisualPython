# Docker 이미지의 기본 이미지로 Python 3 사용
FROM python:3

# 작업 디렉토리를 /app으로 설정
WORKDIR /app

# 현재 디렉토리의 모든 파일을 작업 디렉토리에 복사
COPY . /app

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 실행 (여기에서는 app.py라고 가정)
CMD ["python", "bottle_server.py"]
