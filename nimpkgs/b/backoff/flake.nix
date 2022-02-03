{
  description = ''Implementation of exponential backoff for nim'';
  inputs."backoff-master".url = "path:./master";
  inputs."backoff-v0_1".url = "path:./v0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}