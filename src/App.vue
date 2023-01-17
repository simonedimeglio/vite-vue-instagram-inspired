<script>
import Navbar from "./components/Navbar.vue";
import Main from "./components/Main.vue"
import Aside from "./components/Aside.vue";

export default {
	components: {
		Navbar,
		Main,
		Aside
	},
};
</script>

<template>
	<!-- Main Container -->
	<div class="max-w-4xl m-auto border border-red-500">
		<!-- Header & Nav -->
		<header>
			<!-- Navbar component -->
			<Navbar />
		</header>

		<div class="flex">
			<!-- Main section (stories and posts) -->
			<Main />

			<!-- Aside section (profile, suggestion and footer) -->
			<Aside class="border border-orange-500 grow-[1]"/>
		</div>
		
	</div>
</template>

<style scoped></style>
