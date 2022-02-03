{
  description = ''Graph data structure library'';
  inputs.src-patgraph-v0_2_0.flake = false;
  inputs.src-patgraph-v0_2_0.type = "github";
  inputs.src-patgraph-v0_2_0.owner = "planetis-m";
  inputs.src-patgraph-v0_2_0.repo = "patgraph";
  inputs.src-patgraph-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-patgraph-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patgraph-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patgraph-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}