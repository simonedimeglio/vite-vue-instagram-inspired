<script>
	import Stories from "./Stories.vue"
	import Posts from "./Posts.vue"

	export default {
		components: {
			Stories,
			Posts
		},
	};
</script>

<template>
  <main class="mr-8">
		<Stories />
		<Posts />
	</main>
</template>