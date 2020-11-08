<template>
  <section class="page">
    <nm-box-row height="50%">
      <top />
    </nm-box-row>
    <nm-box-row height="50%" class="nm-p-b-0">
      <bottom />
    </nm-box-row>
  </section>
</template>
<script>
import Top from './components/top'
import Bottom from './components/bottom'
export default {
  components: { Top, Bottom }
}
</script>
