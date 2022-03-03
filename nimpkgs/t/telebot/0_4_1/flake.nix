{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-telebot-0_4_1.flake = false;
  inputs.src-telebot-0_4_1.type = "github";
  inputs.src-telebot-0_4_1.owner = "ba0f3";
  inputs.src-telebot-0_4_1.repo = "telebot.nim";
  inputs.src-telebot-0_4_1.ref = "refs/tags/0.4.1";
  inputs.src-telebot-0_4_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}