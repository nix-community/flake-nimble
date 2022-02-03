{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';
  inputs.src-nim_telegram_bot-0_2_0.flake = false;
  inputs.src-nim_telegram_bot-0_2_0.type = "github";
  inputs.src-nim_telegram_bot-0_2_0.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-0_2_0.repo = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."openexchangerates".url = "path:../../../o/openexchangerates";
  inputs."openexchangerates".type = "github";
  inputs."openexchangerates".owner = "riinr";
  inputs."openexchangerates".repo = "flake-nimble";
  inputs."openexchangerates".ref = "flake-pinning";
  inputs."openexchangerates".dir = "nimpkgs/o/openexchangerates";

  
  inputs."telebot".url = "path:../../../t/telebot";
  inputs."telebot".type = "github";
  inputs."telebot".owner = "riinr";
  inputs."telebot".repo = "flake-nimble";
  inputs."telebot".ref = "flake-pinning";
  inputs."telebot".dir = "nimpkgs/t/telebot";

  outputs = { self, nixpkgs, src-nim_telegram_bot-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_telegram_bot-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_telegram_bot-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}