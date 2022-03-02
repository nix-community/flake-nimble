{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nim_telegram_bot-0_3_0.flake = false;
  inputs.src-nim_telegram_bot-0_3_0.type = "github";
  inputs.src-nim_telegram_bot-0_3_0.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-0_3_0.repo = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-0_3_0.ref = "refs/tags/0.3.0";
  inputs.src-nim_telegram_bot-0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."openexchangerates".type = "github";
  # inputs."openexchangerates".owner = "riinr";
  # inputs."openexchangerates".repo = "flake-nimble";
  # inputs."openexchangerates".ref = "flake-pinning";
  # inputs."openexchangerates".dir = "nimpkgs/o/openexchangerates";
  # inputs."openexchangerates".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."openexchangerates".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."telebot".type = "github";
  # inputs."telebot".owner = "riinr";
  # inputs."telebot".repo = "flake-nimble";
  # inputs."telebot".ref = "flake-pinning";
  # inputs."telebot".dir = "nimpkgs/t/telebot";
  # inputs."telebot".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."telebot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimpy".type = "github";
  # inputs."nimpy".owner = "riinr";
  # inputs."nimpy".repo = "flake-nimble";
  # inputs."nimpy".ref = "flake-pinning";
  # inputs."nimpy".dir = "nimpkgs/n/nimpy";
  # inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_telegram_bot-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_telegram_bot-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_telegram_bot-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}