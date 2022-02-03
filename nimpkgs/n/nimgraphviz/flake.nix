{
  description = ''Nim bindings for the GraphViz tool and the DOT graph language'';
  inputs."nimgraphviz-master".url = "path:./master";
  inputs."nimgraphviz-v3_0".url = "path:./v3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}