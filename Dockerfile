# 가볍고 빠른 nginx 공식 이미지
FROM nginx:alpine

# index.html 파일을 nginx 웹 루트로 복사
COPY index.html /usr/share/nginx/html/index.html

# 80 포트 열어주기
EXPOSE 80
