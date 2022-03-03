{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-telebot-1_0_5.flake = false;
  inputs.src-telebot-1_0_5.type = "github";
  inputs.src-telebot-1_0_5.owner = "ba0f3";
  inputs.src-telebot-1_0_5.repo = "telebot.nim";
  inputs.src-telebot-1_0_5.ref = "refs/tags/1.0.5";
  inputs.src-telebot-1_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sam".type = "github";
  # inputs."sam".owner = "riinr";
  # inputs."sam".repo = "flake-nimble";
  # inputs."sam".ref = "flake-pinning";
  # inputs."sam".dir = "nimpkgs/s/sam";
  # inputs."sam".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-1_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-1_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-1_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}