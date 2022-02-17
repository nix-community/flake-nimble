{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-0_6_1.flake = false;
  inputs.src-telebot-0_6_1.type = "github";
  inputs.src-telebot-0_6_1.owner = "ba0f3";
  inputs.src-telebot-0_6_1.repo = "telebot.nim";
  inputs.src-telebot-0_6_1.ref = "refs/tags/0.6.1";
  
  
  inputs."sam".type = "github";
  inputs."sam".owner = "riinr";
  inputs."sam".repo = "flake-nimble";
  inputs."sam".ref = "flake-pinning";
  inputs."sam".dir = "nimpkgs/s/sam";

  outputs = { self, nixpkgs, src-telebot-0_6_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}