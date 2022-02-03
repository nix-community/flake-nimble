{
  description = ''Nim wrapper around the ngtcp2 library'';
  inputs."ngtcp2-main".url = "path:./main";
  inputs."ngtcp2-0_32_0".url = "path:./0_32_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}