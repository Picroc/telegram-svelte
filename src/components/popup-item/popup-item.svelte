<script>
	import Ripple from '@smui/ripple';
	import { clsx } from './../../helpers/index.js';
	import './popup-item.scss';

	let className;
	export { className as class };
	export let onClick;
</script>

<li
	use:Ripple="{{ ripple: true, color: 'secondary' }}"
	class="{clsx('popup-item', className)}"
	on:click={onClick || (() => {})}
>
	<slot name="img" />
	<slot name="text" />
</li>
