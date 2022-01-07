{
  description = ''
    Async Telegram Bot API Client
  '';
  inputs.src-telebot.url = "https://github.com/ba0f3/telebot.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
