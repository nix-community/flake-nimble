{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-telebot-0_5_4.flake = false;
  inputs.src-telebot-0_5_4.type = "github";
  inputs.src-telebot-0_5_4.owner = "ba0f3";
  inputs.src-telebot-0_5_4.repo = "telebot.nim";
  inputs.src-telebot-0_5_4.ref = "refs/tags/0.5.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-0_5_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_5_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_5_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}