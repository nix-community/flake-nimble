{
  description = ''nim tasks apply to git hooks'';
  inputs.src-stage-v0_3_5.flake = false;
  inputs.src-stage-v0_3_5.type = "github";
  inputs.src-stage-v0_3_5.owner = "bung87";
  inputs.src-stage-v0_3_5.repo = "stage";
  inputs.src-stage-v0_3_5.ref = "refs/tags/v0.3.5";
  
  
  inputs."shell".url = "path:../../../s/shell";
  inputs."shell".type = "github";
  inputs."shell".owner = "riinr";
  inputs."shell".repo = "flake-nimble";
  inputs."shell".ref = "flake-pinning";
  inputs."shell".dir = "nimpkgs/s/shell";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-stage-v0_3_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stage-v0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stage-v0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}