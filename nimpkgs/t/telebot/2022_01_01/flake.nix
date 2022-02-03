{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-2022_01_01.flake = false;
  inputs.src-telebot-2022_01_01.type = "github";
  inputs.src-telebot-2022_01_01.owner = "ba0f3";
  inputs.src-telebot-2022_01_01.repo = "telebot.nim";
  inputs.src-telebot-2022_01_01.ref = "refs/tags/2022.01.01";
  
  outputs = { self, nixpkgs, src-telebot-2022_01_01, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-2022_01_01;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-2022_01_01"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}