<script>
	import { phone, focused } from '../../../stores/input';

	let elem;

	$: $focused === 'phone' && elem.focus();

	const onFocus = () => {
		focused.set('phone');
	};
</script>

<input
	bind:this="{elem}"
	required
	bind:value="{$phone}"
	on:focus="{onFocus}"
	type="phone"
/>
<label for="phone">Phone Number</label>

<style type="text/scss">

</style>
