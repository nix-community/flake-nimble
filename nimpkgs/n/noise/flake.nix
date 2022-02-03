{
  description = ''Nim implementation of linenoise command line editor'';
  inputs."noise-master".url = "path:./master";
  inputs."noise-v0_1_14".url = "path:./v0_1_14";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}