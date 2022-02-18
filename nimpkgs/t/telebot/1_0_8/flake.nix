{
  description = ''Async Telegram Bot API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-telebot-1_0_8.flake = false;
  inputs.src-telebot-1_0_8.type = "github";
  inputs.src-telebot-1_0_8.owner = "ba0f3";
  inputs.src-telebot-1_0_8.repo = "telebot.nim";
  inputs.src-telebot-1_0_8.ref = "refs/tags/1.0.8";
  
  
  inputs."sam".type = "github";
  inputs."sam".owner = "riinr";
  inputs."sam".repo = "flake-nimble";
  inputs."sam".ref = "flake-pinning";
  inputs."sam".dir = "nimpkgs/s/sam";

  outputs = { self, nixpkgs, flakeNimbleLib, src-telebot-1_0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-1_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-1_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}