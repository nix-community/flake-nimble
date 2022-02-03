{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-1_0_0.flake = false;
  inputs.src-telebot-1_0_0.type = "github";
  inputs.src-telebot-1_0_0.owner = "ba0f3";
  inputs.src-telebot-1_0_0.repo = "telebot.nim";
  inputs.src-telebot-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."sam".url = "path:../../../s/sam";
  inputs."sam".type = "github";
  inputs."sam".owner = "riinr";
  inputs."sam".repo = "flake-nimble";
  inputs."sam".ref = "flake-pinning";
  inputs."sam".dir = "nimpkgs/s/sam";

  outputs = { self, nixpkgs, src-telebot-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}