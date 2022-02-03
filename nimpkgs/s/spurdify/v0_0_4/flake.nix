{
  description = ''Spurdification library and CLI'';
  inputs.src-spurdify-v0_0_4.flake = false;
  inputs.src-spurdify-v0_0_4.type = "github";
  inputs.src-spurdify-v0_0_4.owner = "paradox460";
  inputs.src-spurdify-v0_0_4.repo = "spurdify";
  inputs.src-spurdify-v0_0_4.ref = "refs/tags/v0.0.4";
  
  outputs = { self, nixpkgs, src-spurdify-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spurdify-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spurdify-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}