<!-- Main -->
<script>
	import Stories from "./stories-components/Stories.vue"
	import Posts from "./posts-components/Posts.vue"

	export default {
		components: {
			Stories,
			Posts,
		},
	};
</script>

<template>
 	<main class="mr-8">
		<Stories />
		<Posts />
	</main>
</template>
