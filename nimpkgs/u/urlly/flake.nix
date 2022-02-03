{
  description = ''URL and URI parsing for C and JS backend.'';
  inputs."urlly-master".url = "path:./master";
  inputs."urlly-0_1_0".url = "path:./0_1_0";
  inputs."urlly-0_2_0".url = "path:./0_2_0";
  inputs."urlly-0_3_0".url = "path:./0_3_0";
  inputs."urlly-1_0_0".url = "path:./1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}