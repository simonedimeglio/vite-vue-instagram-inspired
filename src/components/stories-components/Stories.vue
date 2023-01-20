<!-- Stories -->
<script>
	import Story from './Story.vue'
	import StoryFallback from '../fallbacks/StoryFallback.vue';

	export default {
		components: {
			Story,
			StoryFallback
		}
	};
</script>

<template>
	<section class="px-2 py-4 mb-6 border rounded-lg bg-white overflow-scroll">
		<div class="flex w-[800px]">
			<Suspense>
				<!-- When it was loaded -->
				<template #default>
					<Story  />
				</template>
				<!-- On Loading -->
				<template #fallback>
					<StoryFallback />
				</template>
			</Suspense>
		</div>
	</section>
</template>