{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-1_0_0.flake = false;
  inputs.src-bump-1_0_0.type = "github";
  inputs.src-bump-1_0_0.owner = "disruptek";
  inputs.src-bump-1_0_0.repo = "bump";
  inputs.src-bump-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-bump-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}