<script>
  import axios from 'axios';

  export default {
    async setup() {
			const result = await axios.get('https://flynn.boolean.careers/exercises/api/boolgram/profiles')
			const stories = result.data
			return { stories }
		},
  }
</script>

<template>
	<div v-for="story in stories" :key="story.id" class="flex flex-col justify-center items-center w-[100px]">
    <div class="bg-gradient-to-b from-pink-500 via-red-500 to-yellow-500 rounded-full p-[2.5px]">
      <img :src="story.profile_picture" :alt="'Anteprima stories di ' + story.profile_name" class="w-16 h-16 rounded-full border-2 border-white cursor-pointer">
    </div>    
    <div class="mt-2 text-[12px]">{{ story.profile_name }}</div>
  </div>
</template>
