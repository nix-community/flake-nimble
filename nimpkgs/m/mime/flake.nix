{
  description = ''Library for attaching files to emails.'';
  inputs."mime-master".url = "path:./master";
  inputs."mime-v0_0_3".url = "path:./v0_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}