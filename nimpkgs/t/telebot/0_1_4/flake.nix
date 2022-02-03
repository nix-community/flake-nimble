{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-0_1_4.flake = false;
  inputs.src-telebot-0_1_4.type = "github";
  inputs.src-telebot-0_1_4.owner = "ba0f3";
  inputs.src-telebot-0_1_4.repo = "telebot.nim";
  inputs.src-telebot-0_1_4.ref = "refs/tags/0.1.4";
  
  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, src-telebot-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}