<!-- App.vue -->
<script>
	import Navbar from "./components/Navbar.vue";
	import Main from "./components/Main.vue";
	import Aside from "./components/Aside.vue";

	export default {
		components: {
			Navbar,
			Main,
			Aside,
		},
	};
</script>

<template>
	<!-- Header & Nav -->
	<header class="bg-white border-b mb-12">
		<!-- Navbar component -->
		<Navbar class="max-w-4xl m-auto" />
	</header>

	<!-- Container -->
	<div class="flex max-w-4xl m-auto">
		<!-- Main section (stories and posts) -->
		<Main class="w-[60%]" />
		<!-- Aside section (profile, suggestion and footer) -->
		<Aside class="w-[40%]" />
	</div>
</template>