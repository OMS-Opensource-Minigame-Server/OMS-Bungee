package fun.reallyisnt.oms.bungeecore;

import net.md_5.bungee.api.plugin.Plugin;

public final class BungeeCore extends Plugin {

    @Override
    public void onEnable() {
        // Plugin startup logic
        this.getLogger().info("hi");
    }

    @Override
    public void onDisable() {
        // Plugin shutdown logic
    }
}
