{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';
  inputs.src-nim_telegram_bot-0_0_2.flake = false;
  inputs.src-nim_telegram_bot-0_0_2.type = "github";
  inputs.src-nim_telegram_bot-0_0_2.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-0_0_2.repo = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, src-nim_telegram_bot-0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_telegram_bot-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_telegram_bot-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}