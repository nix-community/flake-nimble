{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-telebot-0_5_7_2.flake = false;
  inputs.src-telebot-0_5_7_2.type = "github";
  inputs.src-telebot-0_5_7_2.owner = "ba0f3";
  inputs.src-telebot-0_5_7_2.repo = "telebot.nim";
  inputs.src-telebot-0_5_7_2.ref = "refs/tags/0.5.7.2";
  inputs.src-telebot-0_5_7_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-0_5_7_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_5_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_5_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}