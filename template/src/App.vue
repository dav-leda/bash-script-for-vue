
<template>
  <div class="main">
    
    <h1 class="bold u">App.vue</h1>

    <SomeComponent/>

  </div>
</template>

<script lang="ts">

import { defineComponent } from 'vue'

import SomeComponent from './components/SomeComponent.vue'

export default defineComponent({

  components: {
    SomeComponent
  },

  data: () => ({ 
    someData: ''
  }),

  computed: {
    someComputed() {
      return this.someData
    }
  },

  methods: {
    someMethod() {
      this.someData
    }
  }
})

</script>


<style scoped>

</style>
