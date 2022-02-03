{
  description = ''Simple Graph Library'';
  inputs.src-simple_graph-v0_1_0.flake = false;
  inputs.src-simple_graph-v0_1_0.type = "github";
  inputs.src-simple_graph-v0_1_0.owner = "erhlee-bird";
  inputs.src-simple_graph-v0_1_0.repo = "simple_graph";
  inputs.src-simple_graph-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-simple_graph-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_graph-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simple_graph-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}