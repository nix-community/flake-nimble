{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-telebot-2022_02_02.flake = false;
  inputs.src-telebot-2022_02_02.type = "github";
  inputs.src-telebot-2022_02_02.owner = "ba0f3";
  inputs.src-telebot-2022_02_02.repo = "telebot.nim";
  inputs.src-telebot-2022_02_02.ref = "refs/tags/2022.02.02";
  inputs.src-telebot-2022_02_02.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-2022_02_02, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-2022_02_02;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-2022_02_02"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}