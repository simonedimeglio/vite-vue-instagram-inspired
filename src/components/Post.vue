<script>
import { HeartIcon, ChatBubbleOvalLeftIcon, PaperAirplaneIcon, BookmarkIcon } from '@heroicons/vue/24/outline'
export default {
	components: { 
		HeartIcon,
    ChatBubbleOvalLeftIcon,
    PaperAirplaneIcon,
    BookmarkIcon
	}
}

</script>

<template>
	<div class="flex flex-col mb-4">

    <!-- Profile picture and name -->
    <div class="bg-white border rounded-t-lg flex justify-between items-center p-4">
      <!-- LT side -->
      <div class="flex items-center">
        <!-- Profile Picture -->
        <div class="bg-gradient-to-b from-pink-500 via-red-500 to-yellow-500 rounded-full p-[2.5px]">
          <img src="/profile.jpg" alt="" class="w-12 h-12 rounded-full border-2 border-white">
        </div> 
        <!-- Username -->
        <div class="ml-2 font-bold">user</div>
      </div>
      <!-- RT side -->
      <div class="flex mr-4 cursor-pointer">
        <div class="bg-gray-800 rounded-full mx-[1px] h-[4px] w-[4px]"></div>
        <div class="bg-gray-800 rounded-full mx-[1px] h-[4px] w-[4px]"></div>
        <div class="bg-gray-800 rounded-full mx-[1px] h-[4px] w-[4px]"></div>
      </div>
    </div>

    <!-- Post picture -->
    <img src="/landscape.png" alt="Post Picture">
    
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
      <div class="mt-4">Piace a XXX persone</div>

      <!-- Post's text -->
      <div class="mt-4">
        <p><span class="font-bold mr-1">user</span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate rerum corporis quam ipsam ratione vel nesciunt accusantium, consectetur quisquam reprehenderit, blanditiis sapiente illum ab, beatae inventore fugiat iusto deserunt iste?</p>
      </div>

      <!-- Comments -->
      <div class="mt-4">
        <p><span class="font-bold mr-1">comment</span>Consectetur quisquam reprehenderit, blanditiis sapiente illum ab</p>
      </div>
      <div class="mt-4">
        <p><span class="font-bold mr-1">comment</span>Consectetur quisquam reprehenderit, blanditiis sapiente illum ab</p>
      </div>
      <div class="mt-4">
        <p><span class="font-bold mr-1">comment</span>Consectetur quisquam reprehenderit, blanditiis sapiente illum ab</p>
      </div>

      <!-- Comments counter -->
      <div class="mt-4 text-gray-400">Mostra tutti e XXX commenti</div>
    </div>
  </div>
</template>