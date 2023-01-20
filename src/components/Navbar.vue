<!-- Navbar -->
<script>
import { HeartIcon } from '@heroicons/vue/24/outline'
import { HomeIcon } from '@heroicons/vue/24/solid'
export default {
	components: { 
		HeartIcon,
		HomeIcon
	}
}

</script>

<template>
	<nav class="flex justify-between items-center h-[60px]">
		<!-- Logo -->
		<a href="/">
			<img src="/logo.png" alt="Boolgram Logo" class="w-[100px]">
		</a>

		<!-- Searchbar -->
		<div class="w-[200px] py-1 border text-center text-sm text-gray-400 font-semibold bg-gray-100/20 cursor-pointer">Cerca</div>
		
		<!-- Icons -->
		<div class="flex items-center">
			<HeartIcon class="h-6 w-6 mr-2 text-gray-700 cursor-pointer"  />
			<HomeIcon class="h-6 w-6 mx-2 text-gray-700 cursor-pointer"  />
			<img src="/profile.jpg" alt="Profile Picture" class="ml-2 rounded-full w-10 h-10 cursor-pointer">
		</div>
	</nav>
</template>
