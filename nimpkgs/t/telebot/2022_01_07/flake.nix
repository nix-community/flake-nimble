{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-telebot-2022_01_07.flake = false;
  inputs.src-telebot-2022_01_07.type = "github";
  inputs.src-telebot-2022_01_07.owner = "ba0f3";
  inputs.src-telebot-2022_01_07.repo = "telebot.nim";
  inputs.src-telebot-2022_01_07.ref = "refs/tags/2022.01.07";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-2022_01_07, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-2022_01_07;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-2022_01_07"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}