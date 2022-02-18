{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-telebot-0_3_7.flake = false;
  inputs.src-telebot-0_3_7.type = "github";
  inputs.src-telebot-0_3_7.owner = "ba0f3";
  inputs.src-telebot-0_3_7.repo = "telebot.nim";
  inputs.src-telebot-0_3_7.ref = "refs/tags/0.3.7";
  
  
  inputs."asyncevents".type = "github";
  inputs."asyncevents".owner = "riinr";
  inputs."asyncevents".repo = "flake-nimble";
  inputs."asyncevents".ref = "flake-pinning";
  inputs."asyncevents".dir = "nimpkgs/a/asyncevents";

  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-0_3_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_3_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_3_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}