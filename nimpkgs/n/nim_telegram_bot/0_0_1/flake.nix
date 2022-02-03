{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';
  inputs.src-nim_telegram_bot-0_0_1.flake = false;
  inputs.src-nim_telegram_bot-0_0_1.type = "github";
  inputs.src-nim_telegram_bot-0_0_1.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-0_0_1.repo = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-nim_telegram_bot-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_telegram_bot-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_telegram_bot-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}