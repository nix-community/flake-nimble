{
  description = ''functions to tracks for genomics data files'';
  inputs."genoiser-master".url = "path:./master";
  inputs."genoiser-v0_2_4".url = "path:./v0_2_4";
  inputs."genoiser-v0_2_5".url = "path:./v0_2_5";
  inputs."genoiser-v0_2_6".url = "path:./v0_2_6";
  inputs."genoiser-v0_2_7".url = "path:./v0_2_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}