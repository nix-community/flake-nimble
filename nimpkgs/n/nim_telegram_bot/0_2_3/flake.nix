{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';
  inputs.src-nim_telegram_bot-0_2_3.flake = false;
  inputs.src-nim_telegram_bot-0_2_3.type = "github";
  inputs.src-nim_telegram_bot-0_2_3.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-0_2_3.repo = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-0_2_3.ref = "refs/tags/0.2.3";
  
  
  inputs."openexchangerates".type = "github";
  inputs."openexchangerates".owner = "riinr";
  inputs."openexchangerates".repo = "flake-nimble";
  inputs."openexchangerates".ref = "flake-pinning";
  inputs."openexchangerates".dir = "nimpkgs/o/openexchangerates";

  
  inputs."telebot".type = "github";
  inputs."telebot".owner = "riinr";
  inputs."telebot".repo = "flake-nimble";
  inputs."telebot".ref = "flake-pinning";
  inputs."telebot".dir = "nimpkgs/t/telebot";

  outputs = { self, nixpkgs, src-nim_telegram_bot-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_telegram_bot-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_telegram_bot-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}