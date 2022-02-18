{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-telebot-1_0_7.flake = false;
  inputs.src-telebot-1_0_7.type = "github";
  inputs.src-telebot-1_0_7.owner = "ba0f3";
  inputs.src-telebot-1_0_7.repo = "telebot.nim";
  inputs.src-telebot-1_0_7.ref = "refs/tags/1.0.7";
  
  
  inputs."sam".type = "github";
  inputs."sam".owner = "riinr";
  inputs."sam".repo = "flake-nimble";
  inputs."sam".ref = "flake-pinning";
  inputs."sam".dir = "nimpkgs/s/sam";

  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-1_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}