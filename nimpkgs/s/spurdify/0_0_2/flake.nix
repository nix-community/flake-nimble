{
  description = ''Spurdification library and CLI'';
  inputs.src-spurdify-0_0_2.flake = false;
  inputs.src-spurdify-0_0_2.type = "github";
  inputs.src-spurdify-0_0_2.owner = "paradox460";
  inputs.src-spurdify-0_0_2.repo = "spurdify";
  inputs.src-spurdify-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, src-spurdify-0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spurdify-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spurdify-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}