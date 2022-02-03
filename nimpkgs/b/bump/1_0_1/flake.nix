{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-1_0_1.flake = false;
  inputs.src-bump-1_0_1.type = "github";
  inputs.src-bump-1_0_1.owner = "disruptek";
  inputs.src-bump-1_0_1.repo = "bump";
  inputs.src-bump-1_0_1.ref = "refs/tags/1.0.1";
  
  outputs = { self, nixpkgs, src-bump-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}