{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';
  inputs."nim_telegram_bot-master".url = "path:./master";
  inputs."nim_telegram_bot-0_0_1".url = "path:./0_0_1";
  inputs."nim_telegram_bot-0_0_2".url = "path:./0_0_2";
  inputs."nim_telegram_bot-0_2_0".url = "path:./0_2_0";
  inputs."nim_telegram_bot-0_2_2".url = "path:./0_2_2";
  inputs."nim_telegram_bot-0_2_3".url = "path:./0_2_3";
  inputs."nim_telegram_bot-0_2_5".url = "path:./0_2_5";
  inputs."nim_telegram_bot-0_3_0".url = "path:./0_3_0";
  inputs."nim_telegram_bot-0_4_0".url = "path:./0_4_0";
  inputs."nim_telegram_bot-0_4_5".url = "path:./0_4_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}