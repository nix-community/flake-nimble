{
  description = ''Unix process&system query&formatting library&multi-command CLI in Nim'';
  inputs."procs-master".url = "path:./master";
  inputs."procs-v0_2_1".url = "path:./v0_2_1";
  inputs."procs-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}