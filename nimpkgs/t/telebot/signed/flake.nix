{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-signed.flake = false;
  inputs.src-telebot-signed.type = "github";
  inputs.src-telebot-signed.owner = "ba0f3";
  inputs.src-telebot-signed.repo = "telebot.nim";
  inputs.src-telebot-signed.ref = "refs/tags/signed";
  
  
  inputs."sam".type = "github";
  inputs."sam".owner = "riinr";
  inputs."sam".repo = "flake-nimble";
  inputs."sam".ref = "flake-pinning";
  inputs."sam".dir = "nimpkgs/s/sam";

  outputs = { self, nixpkgs, src-telebot-signed, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-signed;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-signed"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}