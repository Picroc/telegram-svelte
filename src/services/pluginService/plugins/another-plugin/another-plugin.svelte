<script>
    import './another-plugin.scss'
    import {topBar} from '../../../../stores/topBar'
import Avatar from '../../../../components/avatar/avatar.svelte';

    if ($topBar) {
        console.log("DIALOG", $topBar.title);
    }
</script>

<div class="another-plugin">
    <span>Dialog title display</span>
    {$topBar && $topBar.title || "No Dialog Selected"}
    <Avatar small photo={$topBar && $topBar.photo.src} title="User Photo"/>
</div>