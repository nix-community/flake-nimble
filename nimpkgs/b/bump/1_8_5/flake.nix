{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-1_8_5.flake = false;
  inputs.src-bump-1_8_5.type = "github";
  inputs.src-bump-1_8_5.owner = "disruptek";
  inputs.src-bump-1_8_5.repo = "bump";
  inputs.src-bump-1_8_5.ref = "refs/tags/1.8.5";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-bump-1_8_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_8_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-1_8_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}