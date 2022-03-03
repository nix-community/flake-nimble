{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-telebot-2022_01_01.flake = false;
  inputs.src-telebot-2022_01_01.type = "github";
  inputs.src-telebot-2022_01_01.owner = "ba0f3";
  inputs.src-telebot-2022_01_01.repo = "telebot.nim";
  inputs.src-telebot-2022_01_01.ref = "refs/tags/2022.01.01";
  inputs.src-telebot-2022_01_01.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-2022_01_01, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-2022_01_01;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-2022_01_01"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}