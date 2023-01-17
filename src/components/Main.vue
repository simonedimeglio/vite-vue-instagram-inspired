<script>
import Posts from "./Posts.vue"
import Stories from "./Stories.vue"

export default {
	components: {
		Stories,
		Posts
	},
};
</script>

<template>
  <main class="border border-green-500 grow-[2]">
		<Stories class="border border-blue-600" />
		<Posts class="border border-purple-500" />
	</main>
</template>