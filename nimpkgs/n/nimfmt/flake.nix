{
  description = ''Configurable Nim code linter / formatter / style checker with heuristics'';
  inputs."nimfmt-master".url = "path:./master";
  inputs."nimfmt-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}