{
  description = ''Spurdification library and CLI'';
  inputs.src-spurdify-v0_0_5.flake = false;
  inputs.src-spurdify-v0_0_5.type = "github";
  inputs.src-spurdify-v0_0_5.owner = "paradox460";
  inputs.src-spurdify-v0_0_5.repo = "spurdify";
  inputs.src-spurdify-v0_0_5.ref = "refs/tags/v0.0.5";
  
  outputs = { self, nixpkgs, src-spurdify-v0_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spurdify-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spurdify-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}