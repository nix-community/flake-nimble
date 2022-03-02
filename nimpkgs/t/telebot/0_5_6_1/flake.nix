{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-telebot-0_5_6_1.flake = false;
  inputs.src-telebot-0_5_6_1.type = "github";
  inputs.src-telebot-0_5_6_1.owner = "ba0f3";
  inputs.src-telebot-0_5_6_1.repo = "telebot.nim";
  inputs.src-telebot-0_5_6_1.ref = "refs/tags/0.5.6.1";
  inputs.src-telebot-0_5_6_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-0_5_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_5_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_5_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}