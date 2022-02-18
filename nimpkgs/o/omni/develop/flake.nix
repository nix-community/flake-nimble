{
  description = ''omni is a DSL for low-level audio programming.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-omni-develop.flake = false;
  inputs.src-omni-develop.type = "github";
  inputs.src-omni-develop.owner = "vitreo12";
  inputs.src-omni-develop.repo = "omni";
  inputs.src-omni-develop.ref = "refs/heads/develop";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-omni-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omni-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omni-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}