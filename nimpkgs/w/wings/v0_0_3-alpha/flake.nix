{
  description = ''A simple cross language struct and enum file generator.'';
  inputs.src-wings-v0_0_3-alpha.flake = false;
  inputs.src-wings-v0_0_3-alpha.type = "github";
  inputs.src-wings-v0_0_3-alpha.owner = "binhonglee";
  inputs.src-wings-v0_0_3-alpha.repo = "wings";
  inputs.src-wings-v0_0_3-alpha.ref = "refs/tags/v0.0.3-alpha";
  
  
  inputs."stones".type = "github";
  inputs."stones".owner = "riinr";
  inputs."stones".repo = "flake-nimble";
  inputs."stones".ref = "flake-pinning";
  inputs."stones".dir = "nimpkgs/s/stones";

  outputs = { self, nixpkgs, src-wings-v0_0_3-alpha, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wings-v0_0_3-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wings-v0_0_3-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}