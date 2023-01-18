<script>
import Post from "./Post.vue";

export default {
	components: {
		Post
	},
};
</script>

<template>
	<section>
		<Suspense>
			<template #default>
				<Post  />
			</template>
			<template #fallback>
				<div>Loading...</div>
			</template>
		</Suspense>
	</section>
</template>