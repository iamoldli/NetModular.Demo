<template>
  <div class="nm-toolbar-item">
    <el-badge :value="5">
      <nm-button type="text" class="nm-toolbar-button bell" icon="bell" @click="visible = !visible" />
    </el-badge>
    <nm-dialog v-bind="dialog" class="nm-ad" :visible.sync="visible">
      <div class="nm-ad-wrapper">
        <el-row>
          <el-col :span="12">
            <a href="https://www.aliyun.com/daily-act/ecs/care?userCode=l1guudnn" target="_blank">
              <img style="margin-bottom:20px;width:100%" src="../assets/1180-310-1.jpg" />
            </a>
          </el-col>
          <el-col :span="12">
            <a href="https://www.aliyun.com/daily-act/ecs/care?userCode=l1guudnn" target="_blank">
              <img style="margin-bottom:20px;width:100%" src="../assets/1180-310-2.jpg" />
            </a>
          </el-col>
        </el-row>

        <h2 class="title">落魄.Net程序员，在线创业~</h2>
        <p class="desc">家乡苹果，又脆又甜，每天上午10点现摘现发，请下单的小伙伴不要急~</p>
        <p class="desc">欢迎大家打开微信扫描下方二维码购买~</p>
        <img class="code" src="../assets/code.png" />
        <img v-for="i in 5" :key="i" :src="require('../assets/' + (i + 1) + '.jpg')" />
      </div>
    </nm-dialog>
  </div>
</template>
<script>
export default {
  data() {
    return {
      visible: false,
      dialog: {
        title: '落魄.Net程序员，在线创业~',
        icon: 'gift',
        width: '900px',
        height: '90%',
        fullscreen: true
      }
    }
  },
  created() {
    setTimeout(() => {
      this.visible = true
    }, 1000)
  }
}
</script>
<style lang="scss">
.nm-toolbar-item {
  .el-badge__content {
    top: 7px;
    right: 17px;
    height: 14px;
    line-height: 14px;
    font-size: 11px;
  }
}
.nm-toolbar-button.bell {
  .nm-icon {
    animation: ringing 2s infinite ease 1s;
  }
}
.nm-ad {
  .nm-dialog-main {
    padding-bottom: 20px;
  }
}
.nm-ad-wrapper {
  padding: 20px;
  text-align: center;

  .title {
    font-size: 30px;
    font-weight: 700;
  }

  .desc {
    margin: 20px 0;
    font-size: 20px;
  }

  img {
    width: 100%;
  }
}
@-moz-keyframes ringing {
  0% {
    -moz-transform: rotate(-15deg);
  }

  2% {
    -moz-transform: rotate(15deg);
  }

  12%,
  4% {
    -moz-transform: rotate(-18deg);
  }

  14%,
  6% {
    -moz-transform: rotate(18deg);
  }

  8% {
    -moz-transform: rotate(-22deg);
  }

  10% {
    -moz-transform: rotate(22deg);
  }

  16% {
    -moz-transform: rotate(-12deg);
  }

  18% {
    -moz-transform: rotate(12deg);
  }

  20% {
    -moz-transform: rotate(0);
  }
}

@-webkit-keyframes ringing {
  0% {
    -webkit-transform: rotate(-15deg);
  }

  2% {
    -webkit-transform: rotate(15deg);
  }

  12%,
  4% {
    -webkit-transform: rotate(-18deg);
  }

  14%,
  6% {
    -webkit-transform: rotate(18deg);
  }

  8% {
    -webkit-transform: rotate(-22deg);
  }

  10% {
    -webkit-transform: rotate(22deg);
  }

  16% {
    -webkit-transform: rotate(-12deg);
  }

  18% {
    -webkit-transform: rotate(12deg);
  }

  20% {
    -webkit-transform: rotate(0);
  }
}

@-ms-keyframes ringing {
  0% {
    -ms-transform: rotate(-15deg);
  }

  2% {
    -ms-transform: rotate(15deg);
  }

  12%,
  4% {
    -ms-transform: rotate(-18deg);
  }

  14%,
  6% {
    -ms-transform: rotate(18deg);
  }

  8% {
    -ms-transform: rotate(-22deg);
  }

  10% {
    -ms-transform: rotate(22deg);
  }

  16% {
    -ms-transform: rotate(-12deg);
  }

  18% {
    -ms-transform: rotate(12deg);
  }

  20% {
    -ms-transform: rotate(0);
  }
}

@keyframes ringing {
  0% {
    transform: rotate(-15deg);
  }

  2% {
    transform: rotate(15deg);
  }

  12%,
  4% {
    transform: rotate(-18deg);
  }

  14%,
  6% {
    transform: rotate(18deg);
  }

  8% {
    transform: rotate(-22deg);
  }

  10% {
    transform: rotate(22deg);
  }

  16% {
    transform: rotate(-12deg);
  }

  18% {
    transform: rotate(12deg);
  }

  20% {
    transform: rotate(0);
  }
}
</style>
