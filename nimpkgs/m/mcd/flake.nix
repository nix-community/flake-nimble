{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';
  inputs."mcd-develop".url = "path:./develop";
  inputs."mcd-master".url = "path:./master";
  inputs."mcd-0_1_0".url = "path:./0_1_0";
  inputs."mcd-0_2_0".url = "path:./0_2_0";
  inputs."mcd-0_3_0".url = "path:./0_3_0";
  inputs."mcd-0_3_1".url = "path:./0_3_1";
  inputs."mcd-0_3_2".url = "path:./0_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}