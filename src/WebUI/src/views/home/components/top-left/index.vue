<template>
  <nm-flex fix="160px" :gutter="5">
    <template v-slot:top>
      <top />
    </template>
    <template v-slot:bottom>
      <bottom />
    </template>
  </nm-flex>
</template>
<script>
import Top from './components/top'
import Bottom from './components/bottom'
export default {
  components: { Top, Bottom }
}
</script>
