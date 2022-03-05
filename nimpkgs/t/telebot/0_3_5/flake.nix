{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-telebot-0_3_5.flake = false;
  inputs.src-telebot-0_3_5.type = "github";
  inputs.src-telebot-0_3_5.owner = "ba0f3";
  inputs.src-telebot-0_3_5.repo = "telebot.nim";
  inputs.src-telebot-0_3_5.ref = "refs/tags/0.3.5";
  inputs.src-telebot-0_3_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."asyncevents".type = "github";
  inputs."asyncevents".owner = "riinr";
  inputs."asyncevents".repo = "flake-nimble";
  inputs."asyncevents".ref = "flake-pinning";
  inputs."asyncevents".dir = "nimpkgs/a/asyncevents";
  inputs."asyncevents".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncevents".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-0_3_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}