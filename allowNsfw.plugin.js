//META{"name":"AllowNSFW","authorId":"564843886434975745","website":"https://github.com/joshix-1", "source":"https://gist.github.com/Joshix-1/393c90ca7a64cbe5ab213ef12bd3bff8"}*//

module.exports = class AllowNSFW {
    getName() {return "AllowNSFW";}
    getDescription() {return "With this plugin you can see NSFW channels if you are to dumb to tell discord you are over 18.";}
    getVersion() {return "0.0.1";}
    getAuthor() {return "Joshix";}
    load() {}
    start() {
        this.update();
    }
    stop() {}
    onSwitch() {
        this.update();
    }

    update () {
        var v = BdApi.findModuleByProps("getCurrentUser").getCurrentUser();
        if (typeof v === "undefined") return;
        
        v.nsfwAllowed = true;
    }
}