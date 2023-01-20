<!-- Posts -->
<script>
	import Post from "./Post.vue";
	import PostFallback from "../fallbacks/PostFallback.vue";

	export default {
		components: {
			Post,
			PostFallback
		}
	};
</script>

<template>
	<section>
		<Suspense>
			<!-- When it was loaded -->
			<template #default>
				<Post  />
			</template>
			<!-- On Loading -->
			<template #fallback>
				<PostFallback  />
			</template>
		</Suspense>
	</section>
</template>