# 先进入到目标目录
cd ./code/tyee

# 拉下main分支最新的代码
git pull origin main

# 利用临时容器构建
# 设置镜像名称和标签
IMAGE_NAME="tyee-world"
TAG="v1"

# 设置宿主机上的目标目录，用于存放构建产物
HOST_OUTPUT_DIR="/var/www/tyee"

# 构建Docker镜像
docker build -t ${IMAGE_NAME}:${TAG} .

# 创建临时容器并复制构建产物到宿主机指定目录
docker create --name temp_container ${IMAGE_NAME}:${TAG}
docker cp temp_container:/app/dist ${HOST_OUTPUT_DIR}
docker rm temp_container

