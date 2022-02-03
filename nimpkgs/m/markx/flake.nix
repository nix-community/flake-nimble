{
  description = ''markx selects execution targets with editor and executes commands.'';
  inputs."markx-master".url = "path:./master";
  inputs."markx-v1_0_0".url = "path:./v1_0_0";
  inputs."markx-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}