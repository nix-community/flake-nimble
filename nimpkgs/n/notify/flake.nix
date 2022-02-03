{
  description = ''A wrapper to notification libraries'';
  inputs."notify-master".url = "path:./master";
  inputs."notify-0_1_0".url = "path:./0_1_0";
  inputs."notify-0_1_1".url = "path:./0_1_1";
  inputs."notify-0_1_2".url = "path:./0_1_2";
  inputs."notify-0_1_4".url = "path:./0_1_4";
  inputs."notify-0_1_5".url = "path:./0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}