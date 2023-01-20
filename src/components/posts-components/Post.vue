<!-- Post -->
<script>
  import axios from "axios";

  import {
    HeartIcon,
    ChatBubbleOvalLeftIcon,
    PaperAirplaneIcon,
    BookmarkIcon,
  } from "@heroicons/vue/24/outline"; // Heroicons - vue 

  export default {
    data() {
      return {
        posts: [], // Initialize posts as empty array
      };
    },
    async created() {
      const result = await axios.get(
        "https://flynn.boolean.careers/exercises/api/boolgram/posts",
      );
      this.posts = result.data; // Return posts
      this.posts.forEach((post) => { // Set each post that will be rendered the "toggleComments" flag to false
        post.toggleComments = false;
        post.isLiked = false
      });
    },
    computed: {
      isDisabled() { // To disable the button when there are no comments beyond the 3 required
        return this.posts.comments.length === 0;
      },
    },
    methods: {
      toggleShowComments(post) { // method to toggle the comments section of a post
        post.toggleComments = !post.toggleComments;
      },
      toggleLike(post) { //  method to toggle the like button
        post.isLiked = !post.isLiked
      },
      showCommentsTxt(post) { // method to show the appropriate message on the comments button based on the number of comments
        let showBtn;
        if (post.toggleComments && post.comments.length > 3) {
          showBtn = "Minimizza i commenti";
        } else if (!post.toggleComments && post.comments.length > 3) {
          showBtn = `Mostra tutti e ${post.comments.length} commenti`;
        } else {
          showBtn = `Non sono presenti ulteriori commenti`;
        }
        return showBtn;
      },
    },
    components: { // In this case, only icons
      HeartIcon,
      ChatBubbleOvalLeftIcon,
      PaperAirplaneIcon,
      BookmarkIcon,
    },
  };
</script>

<!-- Single Post template -->
<template>
	<div
		v-for="post in posts"
		:key="post.id"
		class="flex flex-col mb-4 rounded-lg"
	>
		<!-- Profile picture and name -->
		<div class="bg-white border rounded-t-lg flex justify-between items-center p-4">
			<!-- LT side -->
			<div class="flex items-center">
				<!-- Profile Picture -->
				<div class="bg-gradient-to-b from-pink-500 via-red-500 to-yellow-500 rounded-full p-[2.5px]">
					<img
						:src="post.profile_picture"
						:alt="'Foto profilo di ' + post.profile_name"
						class="w-12 h-12 rounded-full border-2 border-white"
					/>
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
		<img :src="post.post_image" :alt="'Foto di ' + post.profile_name" />

		<!-- Text, likes and comments section -->
		<div class="bg-white border rouded-b-lg p-4">
			<!-- Icons -->
			<div class="flex justify-between">
				<div class="flex justify-center items-center">
          <HeartIcon :class="{'text-red-500': post.isLiked}" @click="toggleLike(post)" class="h-6 w-6 cursor-pointer"/>
					<ChatBubbleOvalLeftIcon class="h-6 w-6 mx-2 text-gray-700 cursor-pointer"/>
					<PaperAirplaneIcon class="h-6 w-6 text-gray-700 cursor-pointer" />
				</div>
				<BookmarkIcon class="h-6 w-6 mr-2 text-gray-700 cursor-pointer" />
			</div>

			<!-- Like's counter -->
			<div class="mt-4">Piace a {{ post.likes.length }} persone</div>

			<!-- Post's text -->
			<div class="mt-4">
				<p>
					<span class="font-bold mr-1">{{ post.profile_name }}</span>{{ post.post_text }}
				</p>
			</div>

			<!-- Comments -->
			<div v-if="!post.toggleComments">
				<!-- Show first 3 comments only if they exist -->
				<div v-if="post.comments?.length > 2">
					<div class="mt-4">
						<p>
							<span class="font-bold mr-1">{{ post.comments[0].username }}</span>{{ post.comments[0].text }}
						</p>
					</div>
					<div class="mt-4">
						<p>
							<span class="font-bold mr-1">{{ post.comments[1].username }}</span>{{ post.comments[1].text }}
						</p>
					</div>
					<div class="mt-4">
						<p>
							<span class="font-bold mr-1">{{ post.comments[2].username }}</span>{{ post.comments[2].text }}
						</p>
					</div>
				</div>
				<!-- Show first 2 comments only if they exist -->
				<div v-else-if="post.comments?.length == 2">
					<div class="mt-4">
						<p>
							<span class="font-bold mr-1">{{ post.comments[0].username }}</span>{{ post.comments[0].text }}
						</p>
					</div>
					<div class="mt-4">
						<p>
							<span class="font-bold mr-1">{{ post.comments[1].username }}</span>{{ post.comments[1].text }}
						</p>
					</div>
				</div>
				<!-- Show first comment only if exist -->
				<div v-else-if="post.comments?.length == 1">
					<div class="mt-4">
						<p>
							<span class="font-bold mr-1">{{ post.comments[0].username }}</span>{{ post.comments[0].text }}
						</p>
					</div>
				</div>
				<!-- if there are no comments, I show the message "add a comment" -->
				<div v-else>
					<div class="mt-4">
						<p class="text-gray-400 cursor-pointer">Aggiungi un commento...</p>
					</div>
				</div>

				<!-- Comments counter -->
				<button v-bind:class="{ 'disabled': !post.comments }" @click="toggleShowComments(post)">
					<div class="mt-4 text-gray-400 cursor-pointer hover:underline">
						{{ showCommentsTxt(post) }}
					</div>
				</button>
			</div>

			<!-- Show all comments -->
			<div v-else>
				<div class="mt-4" v-for="comment in post.comments">
					<p>
						<span class="font-bold mr-1">{{ comment.username }}</span>{{ comment.text }}
					</p>
				</div>
				<button v-bind:class="{ 'disabled': !post.comments }" @click="toggleShowComments(post)">
					<div class="mt-4 text-gray-400 cursor-pointer hover:underline">
						{{ showCommentsTxt(post) }}
					</div>
				</button>
			</div>
		</div>
	</div>
</template>
