{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-1_7_5.flake = false;
  inputs.src-bump-1_7_5.type = "github";
  inputs.src-bump-1_7_5.owner = "disruptek";
  inputs.src-bump-1_7_5.repo = "bump";
  inputs.src-bump-1_7_5.ref = "refs/tags/1.7.5";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-bump-1_7_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_7_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-1_7_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}