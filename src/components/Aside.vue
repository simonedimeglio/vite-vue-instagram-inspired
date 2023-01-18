<script>
import Suggested from "./Suggested.vue"
import Footer from "./Footer.vue";

export default {
	components: {
		Suggested,
		Footer
	},
};
</script>

<template>
	<aside>
		<!-- User section -->
		<div class="flex justify-between items-center">
			<!-- User picture, username and full name -->
			<div class="flex">
				<img src="/profile.jpg" alt="Profile Picture" class="border mr-4 rounded-full w-12 h-12">
				<div>
					<div class="font-bold">username</div>
					<div class="text-gray-400">Full Name</div>
				</div>
			</div>
			
			<!-- Go to -->
			<div class="text-cyan-500 text-xs font-semibold">Passa a</div>
		</div>

		<!-- Suggestion's section -->
		<div class="flex justify-between mt-4">
				<div class="text-gray-400 font-bold text-sm">Suggerimenti per te</div>
				<div class="font-semibold text-xs">Mostra tutti</div>
		</div>

		<!-- Suggestions's list -->
		<Suggested  />
		<Suggested  />
		<Suggested  />
		<Suggested  />
		<Suggested  />


		<Footer />
	</aside>
</template>
