{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';
  inputs.src-sayhissatsuwaza-v0_3_0.flake = false;
  inputs.src-sayhissatsuwaza-v0_3_0.type = "github";
  inputs.src-sayhissatsuwaza-v0_3_0.owner = "jiro4989";
  inputs.src-sayhissatsuwaza-v0_3_0.repo = "sayhissatsuwaza";
  inputs.src-sayhissatsuwaza-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-sayhissatsuwaza-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sayhissatsuwaza-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sayhissatsuwaza-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}