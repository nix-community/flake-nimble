{
  description = ''
    Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins
  '';
  inputs.src-nim_telegram_bot.url = "https://github.com/juancarlospaco/nim-telegram-bot";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
