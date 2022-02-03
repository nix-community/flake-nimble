{
  description = ''Bindings for SunVox modular synthesizer'';
  inputs."sunvox-master".url = "path:./master";
  inputs."sunvox-0_0_1".url = "path:./0_0_1";
  inputs."sunvox-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}