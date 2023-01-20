<!-- Aside -->
<script>
	import Suggested from "./suggested-component/Suggested.vue";
	import Footer from "./Footer.vue";
	import SuggestedFallback from "./fallbacks/SuggestedFallback.vue";

	export default {
		components: {
			Suggested,
			Footer,
			SuggestedFallback,
		},
	};
</script>

<template>
	<aside>
		<!-- User section -->
		<div class="flex justify-between items-center">
			<!-- User picture, username and full name -->
			<div class="flex">
				<img
					src="/profile.jpg"
					alt="Profile Picture"
					class="border mr-4 rounded-full w-12 h-12"
				/>
				<div>
					<div class="font-bold">smne.dev</div>
					<div class="text-gray-400">Simone Di Meglio</div>
				</div>
			</div>
			<!-- Go to -->
			<div class="text-cyan-500 text-xs font-semibold cursor-pointer">Passa a</div>
		</div>

		<!-- Suggestion's section -->
		<div class="flex justify-between mt-4">
			<div class="text-gray-400 font-bold text-sm">Suggerimenti per te</div>
			<div class="font-semibold text-xs">Mostra tutti</div>
		</div>

		<!-- Suggestions's list -->
		<Suspense>
			<!-- When it was loaded -->
			<template #default>
				<Suggested />
			</template>
			<!-- On Loading -->
			<template #fallback>
				<SuggestedFallback />
			</template>
		</Suspense>

		<!-- Footer -->
		<Footer />
	</aside>
</template>
