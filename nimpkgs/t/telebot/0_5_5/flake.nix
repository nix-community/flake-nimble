{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-0_5_5.flake = false;
  inputs.src-telebot-0_5_5.type = "github";
  inputs.src-telebot-0_5_5.owner = "ba0f3";
  inputs.src-telebot-0_5_5.repo = "telebot.nim";
  inputs.src-telebot-0_5_5.ref = "refs/tags/0.5.5";
  
  outputs = { self, nixpkgs, src-telebot-0_5_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_5_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-0_5_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}