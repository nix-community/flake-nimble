{
  description = ''A RPC framework for building web APIs'';
  inputs."nerve-master".url = "path:./master";
  inputs."nerve-0_1_0".url = "path:./0_1_0";
  inputs."nerve-0_1_1".url = "path:./0_1_1";
  inputs."nerve-0_2_0".url = "path:./0_2_0";
  inputs."nerve-0_3_0".url = "path:./0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}