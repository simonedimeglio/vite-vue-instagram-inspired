<script>
  import axios from 'axios';
  import { HeartIcon, ChatBubbleOvalLeftIcon, PaperAirplaneIcon, BookmarkIcon } from '@heroicons/vue/24/outline'

  export default {
    async setup() {
			const result = await axios.get('https://flynn.boolean.careers/exercises/api/boolgram/posts')
			const posts = result.data
			return { posts }
		},
    data() {
        return {
            showComments: false,
        }
    },
    methods: {
        // toggleShow() {
        //     this.showComments = !this.showComments;
        // },
    },
    components: { 
      HeartIcon,
      ChatBubbleOvalLeftIcon,
      PaperAirplaneIcon,
      BookmarkIcon
    }
  }
</script>

<template>
	<div v-for="post in posts" :key="post.id" class="flex flex-col mb-4">

    <!-- Profile picture and name -->
    <div class="bg-white border rounded-t-lg flex justify-between items-center p-4">
      <!-- LT side -->
      <div class="flex items-center">
        <!-- Profile Picture -->
        <div class="bg-gradient-to-b from-pink-500 via-red-500 to-yellow-500 rounded-full p-[2.5px]">
          <img :src="post.profile_picture" :alt="'Foto profilo di ' + post.profile_name"  class="w-12 h-12 rounded-full border-2 border-white">
        </div> 
        <!-- Username and full name -->
        <div>
          <div class="ml-2 font-bold">{{ post.profile_name }}</div>
          <div class="ml-2 font-xs text-gray-500">{{ post.profile_fullname }}</div>
        </div>
        
      </div>
      <!-- RT side (three dots) -->
      <div class="flex mr-4 cursor-pointer">
        <div class="bg-gray-800 rounded-full mx-[1px] h-[4px] w-[4px]"></div>
        <div class="bg-gray-800 rounded-full mx-[1px] h-[4px] w-[4px]"></div>
        <div class="bg-gray-800 rounded-full mx-[1px] h-[4px] w-[4px]"></div>
      </div>
    </div>

    <!-- Post picture -->
    <img :src="post.post_image" :alt="'Foto di ' + post.profile_name">
    
    <!-- Text, likes and comments section -->
    <div class="bg-white border rouded-b p-4">

      <!-- Icons -->
      <div class="flex justify-between">
        <div class="flex justify-center items-center">
          <HeartIcon class="h-6 w-6 text-gray-700 cursor-pointer"  />
          <ChatBubbleOvalLeftIcon class="h-6 w-6 mx-2 text-gray-700 cursor-pointer"  />
          <PaperAirplaneIcon class="h-6 w-6 text-gray-700 cursor-pointer"  />
        </div>
        <BookmarkIcon class="h-6 w-6 mr-2 text-gray-700 cursor-pointer"  />
      </div>

      <!-- Like's counter -->
      <div class="mt-4">Piace a {{ post.likes.length }} persone</div>

      <!-- Post's text -->
      <div class="mt-4">
        <p><span class="font-bold mr-1">{{ post.profile_name }}</span>{{ post.post_text }}</p>
      </div>

      <!-- Comments -->
      <!-- Show first 3 comments only if they exist -->
      <div v-if="post.comments.length > 2">
        <div class="mt-4">
          <p><span class="font-bold mr-1">{{ post.comments[0].username }}</span>{{ post.comments[0].text }}</p>
        </div>
        <div class="mt-4">
          <p><span class="font-bold mr-1">{{ post.comments[1].username }}</span>{{ post.comments[1].text }}</p>
        </div>
        <div class="mt-4">
          <p><span class="font-bold mr-1">{{ post.comments[2].username }}</span>{{ post.comments[2].text }}</p>
        </div>
      </div>
      <!-- Show first 2 comments only if they exist -->
      <div v-else-if="post.comments.length == 2">
        <div class="mt-4">
          <p><span class="font-bold mr-1">{{ post.comments[0].username }}</span>{{ post.comments[0].text }}</p>
        </div>
        <div class="mt-4">
          <p><span class="font-bold mr-1">{{ post.comments[1].username }}</span>{{ post.comments[1].text }}</p>
        </div>
      </div>
      <!-- Show first comment only if exist -->
      <div v-else-if="post.comments.length == 1">
        <div class="mt-4">
          <p><span class="font-bold mr-1">{{ post.comments[0].username }}</span>{{ post.comments[0].text }}</p>
        </div>
      </div>
      <!-- if there are no comments, I show the message "add a comment" -->
      <div v-else>
        <div class="mt-4">
          <p class="text-gray-400 cursor-pointer">Aggiungi un commento...</p>
        </div>
      </div>
      

      <!-- Comments counter -->
      <div class="mt-4 text-gray-400 cursor-pointer hover:underline">Mostra tutti e {{ post.comments.length }} commenti</div>
    </div>
  </div>
</template>