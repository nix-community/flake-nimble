{
  description = ''URL and URI parsing for C and JS backend.'';
  inputs.src-urlly-1_0_0.flake = false;
  inputs.src-urlly-1_0_0.type = "github";
  inputs.src-urlly-1_0_0.owner = "treeform";
  inputs.src-urlly-1_0_0.repo = "urlly";
  inputs.src-urlly-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-urlly-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-urlly-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-urlly-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}