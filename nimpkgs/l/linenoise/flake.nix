{
  description = ''Wrapper for linenoise, a free, self-contained alternative to GNU readline.'';
  inputs."linenoise-master".url = "path:./master";
  inputs."linenoise-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}