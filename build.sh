# docker run --rm -v $(pwd)/:/opt/zingolib 1337bytes/zingo-builder:latest bash -c "cd /opt/zingolib && npm run native:build-release && mv /opt/zingolib/native/index.node /opt/zingolib/native/linux.node && npm run native:build:windows-x64 && mv /opt/zingolib/native/index.node /opt/zingolib/native/windows.node"
docker run --rm -v $(pwd)/:/opt/zingolib 1337bytes/zingo-builder:latest bash -c "cd /opt/zingolib && npm run native:build-release && mv /opt/zingolib/native/index.node /opt/zingolib/native/linux.node"
