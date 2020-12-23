FROM alvrme/alpine-android-base:jdk11
LABEL maintainer="Álvaro S. <alvaro@alvr.me>"

ENV BUILD_TOOLS "27.0.3"
ENV TARGET_SDK "27"
ENV PATH $PATH:${ANDROID_SDK_ROOT}/build-tools/${BUILD_TOOLS}

# Install SDK Packages
RUN sdkmanager --sdk_root=${ANDROID_SDK_ROOT} --install "build-tools;${BUILD_TOOLS}" "platforms;android-${TARGET_SDK}" && \
    sdkmanager --sdk_root=${ANDROID_SDK_ROOT} --uninstall emulator
