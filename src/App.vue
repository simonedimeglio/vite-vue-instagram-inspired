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
	<header>
		<!-- Navbar component -->
		<Navbar />
	</header>

	<!-- Main section (stories and posts) -->
	<Main />

	<!-- Aside section (profile, suggestion and footer) -->
	<Aside />
</template>

<style scoped></style>
