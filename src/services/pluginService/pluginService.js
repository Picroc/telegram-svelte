export default class PluginService {
	toBeAdded = ['hello-world-plugin', 'another-plugin'];
	plugins = {};

	readPlugins = async () => {
		for (let pluginName of this.toBeAdded) {
			await import(`./plugins/${pluginName}/${pluginName}.svelte`).then(
				plugin => {
					this.plugins[pluginName] = plugin;
				}
			);
		}

		await import(
			'./plugins/hello-world-plugin/hello-world-plugin.svelte'
		).then(plugin => {
			this.plugins['hello-world-plugin'] = plugin;
		});
	};
}
