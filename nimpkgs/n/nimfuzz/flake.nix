{
  description = ''Simple and compact fuzzing'';
  inputs."nimfuzz-master".url = "path:./master";
  inputs."nimfuzz-1_2_0".url = "path:./1_2_0";
  inputs."nimfuzz-v1_0_0".url = "path:./v1_0_0";
  inputs."nimfuzz-v1_1_0".url = "path:./v1_1_0";
  inputs."nimfuzz-v1_3_0".url = "path:./v1_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}