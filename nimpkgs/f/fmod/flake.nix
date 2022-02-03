{
  description = ''Nim wrapper for the FMOD Low Level C API'';
  inputs."fmod-master".url = "path:./master";
  inputs."fmod-v0_1_0".url = "path:./v0_1_0";
  inputs."fmod-v0_1_1".url = "path:./v0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}