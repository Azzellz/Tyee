<template>
    <div id="container">
        <n-space vertical>
            <n-gradient-text type="info">梦是现实的延续。 </n-gradient-text>
            <n-gradient-text type="danger">现实是梦的终结； </n-gradient-text>
        </n-space>
    </div>
</template>

<script setup lang="ts">
import { NGradientText, NSpace } from 'naive-ui'
import { ref, onMounted, onUnmounted } from 'vue'

//定时切换标题
</script>

<style lang="less" scoped>
#container {
    width: 100%;
    height: 100%;
    /* 确保伪元素不会超出父元素的边界 */
    position: relative;
    overflow: hidden;
    padding: 50px;
    // display: flex;
    // flex-direction: column;
    // justify-content: space-around;
    // align-items: center;
    ::before {
        content: '';
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background-image: url('../assets/img/bg/hoshino.png');
        background-size: cover;
        background-repeat: no-repeat;
        filter: blur(5px); /* 设置模糊效果 */
        z-index: -1;
    }
}
.n-gradient-text {
    font-size: 24px;
    text-shadow: 0px 0px 5px rgba(117, 117, 117, 0.6);
}
</style>
