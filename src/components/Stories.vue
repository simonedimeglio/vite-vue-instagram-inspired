<script>
import Story from "./Story.vue"
	export default {
		components: {
			Story
		}
	};
</script>

<template>
	<section class="px-2 py-4 mb-6 border rounded-lg bg-white overflow-scroll">
		<div class="flex w-[800px]">
			<Suspense>
				<template #default>
					<Story  />
				</template>
				<template #fallback>
					<div>Loading...</div>
				</template>
			</Suspense>
		</div>
	</section>
</template>