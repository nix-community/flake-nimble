{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-0_6_7.flake = false;
  inputs.src-telebot-0_6_7.type = "github";
  inputs.src-telebot-0_6_7.owner = "ba0f3";
  inputs.src-telebot-0_6_7.repo = "telebot.nim";
  inputs.src-telebot-0_6_7.ref = "refs/tags/0.6.7";
  
  
  inputs."sam".url = "path:../../../s/sam";
  inputs."sam".type = "github";
  inputs."sam".owner = "riinr";
  inputs."sam".repo = "flake-nimble";
  inputs."sam".ref = "flake-pinning";
  inputs."sam".dir = "nimpkgs/s/sam";

  outputs = { self, nixpkgs, src-telebot-0_6_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_6_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-0_6_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}