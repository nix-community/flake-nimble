{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nim_telegram_bot-master".type = "github";
  inputs."nim_telegram_bot-master".owner = "riinr";
  inputs."nim_telegram_bot-master".repo = "flake-nimble";
  inputs."nim_telegram_bot-master".ref = "flake-pinning";
  inputs."nim_telegram_bot-master".dir = "nimpkgs/n/nim_telegram_bot/master";
  inputs."nim_telegram_bot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_0_1".type = "github";
  inputs."nim_telegram_bot-0_0_1".owner = "riinr";
  inputs."nim_telegram_bot-0_0_1".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_0_1".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_0_1".dir = "nimpkgs/n/nim_telegram_bot/0_0_1";
  inputs."nim_telegram_bot-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_0_2".type = "github";
  inputs."nim_telegram_bot-0_0_2".owner = "riinr";
  inputs."nim_telegram_bot-0_0_2".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_0_2".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_0_2".dir = "nimpkgs/n/nim_telegram_bot/0_0_2";
  inputs."nim_telegram_bot-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_2_0".type = "github";
  inputs."nim_telegram_bot-0_2_0".owner = "riinr";
  inputs."nim_telegram_bot-0_2_0".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_2_0".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_2_0".dir = "nimpkgs/n/nim_telegram_bot/0_2_0";
  inputs."nim_telegram_bot-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_2_2".type = "github";
  inputs."nim_telegram_bot-0_2_2".owner = "riinr";
  inputs."nim_telegram_bot-0_2_2".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_2_2".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_2_2".dir = "nimpkgs/n/nim_telegram_bot/0_2_2";
  inputs."nim_telegram_bot-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_2_3".type = "github";
  inputs."nim_telegram_bot-0_2_3".owner = "riinr";
  inputs."nim_telegram_bot-0_2_3".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_2_3".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_2_3".dir = "nimpkgs/n/nim_telegram_bot/0_2_3";
  inputs."nim_telegram_bot-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_2_5".type = "github";
  inputs."nim_telegram_bot-0_2_5".owner = "riinr";
  inputs."nim_telegram_bot-0_2_5".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_2_5".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_2_5".dir = "nimpkgs/n/nim_telegram_bot/0_2_5";
  inputs."nim_telegram_bot-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_3_0".type = "github";
  inputs."nim_telegram_bot-0_3_0".owner = "riinr";
  inputs."nim_telegram_bot-0_3_0".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_3_0".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_3_0".dir = "nimpkgs/n/nim_telegram_bot/0_3_0";
  inputs."nim_telegram_bot-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_4_0".type = "github";
  inputs."nim_telegram_bot-0_4_0".owner = "riinr";
  inputs."nim_telegram_bot-0_4_0".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_4_0".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_4_0".dir = "nimpkgs/n/nim_telegram_bot/0_4_0";
  inputs."nim_telegram_bot-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim_telegram_bot-0_4_5".type = "github";
  inputs."nim_telegram_bot-0_4_5".owner = "riinr";
  inputs."nim_telegram_bot-0_4_5".repo = "flake-nimble";
  inputs."nim_telegram_bot-0_4_5".ref = "flake-pinning";
  inputs."nim_telegram_bot-0_4_5".dir = "nimpkgs/n/nim_telegram_bot/0_4_5";
  inputs."nim_telegram_bot-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}