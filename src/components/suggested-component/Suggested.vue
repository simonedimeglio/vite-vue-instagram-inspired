<!-- Suggested -->
<script>
	import axios from 'axios';

	export default {
		async setup() {
			const result = await axios.get('https://flynn.boolean.careers/exercises/api/boolgram/profiles')
			const suggestions = result.data
			return { suggestions } // List of suggested users
		}
	}
</script>

<template>
	<div v-for="user in suggestions" :key="user.id" class="flex justify-between items-center mt-4">
		<!-- Profile picture and name -->
		<div class="flex items-center">
			<img :src="user.profile_picture" :alt="'Foto del profilo di ' + user.profile_name" class="border mr-4 rounded-full w-8 h-8">
			<div>
				<div class="font-bold text-sm">{{ user.profile_name }}</div>
				<div class="text-gray-400 text-xs">Suggerimenti per te</div>
			</div>
		</div>
		<!-- Follow button (fake) -->
		<div class="text-cyan-500 text-xs font-semibold cursor-pointer">Segui</div>
	</div>
</template>