{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-telebot-0_5_5.flake = false;
  inputs.src-telebot-0_5_5.type = "github";
  inputs.src-telebot-0_5_5.owner = "ba0f3";
  inputs.src-telebot-0_5_5.repo = "telebot.nim";
  inputs.src-telebot-0_5_5.ref = "refs/tags/0.5.5";
  inputs.src-telebot-0_5_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-0_5_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_5_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_5_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}