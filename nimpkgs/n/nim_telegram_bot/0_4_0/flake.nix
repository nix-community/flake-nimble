{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nim_telegram_bot-0_4_0.flake = false;
  inputs.src-nim_telegram_bot-0_4_0.type = "github";
  inputs.src-nim_telegram_bot-0_4_0.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-0_4_0.repo = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-0_4_0.ref = "refs/tags/0.4.0";
  
  
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

  
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_telegram_bot-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_telegram_bot-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_telegram_bot-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}