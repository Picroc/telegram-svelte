<script>
    import PluginService from '../../services/pluginService/pluginService';
    import Checkbox from '../checkbox.svelte';
    import './plugin-manager.scss';

    let plugins = [];
    let rendered = [];

    const onPluginClick = name => {
        const idx = rendered.findIndex(el => el.component.name === name);
        console.log(idx);
        if (idx !== -1) {
            rendered = [...rendered.slice(0, idx), ...rendered.slice(idx + 1)];
            return;
        }
        rendered = [ ...rendered, { component: plugins.find(o => o.name === name) } ];
    }

    const manager = new PluginService();
    manager.readPlugins().then(() => {
        Object.entries(manager.plugins).forEach( plugin => {
            plugins = [...plugins, { name: plugin[0], render: plugin[1] }];
        });
    });
</script>


<div class="plugin-manager">
    Hello, manager!
    <div class="plugin-manager__list">
        {#each plugins as { name }}
            <div>
                <Checkbox on:click="{() => onPluginClick(name)}" />
                {name}
            </div>
        {/each }
    </div>
    {#each rendered as { component } }
        <svelte:component this={component.render.default} />
    {/each}
</div>
