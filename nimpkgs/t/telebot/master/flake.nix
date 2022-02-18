{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-telebot-master.flake = false;
  inputs.src-telebot-master.type = "github";
  inputs.src-telebot-master.owner = "ba0f3";
  inputs.src-telebot-master.repo = "telebot.nim";
  inputs.src-telebot-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}