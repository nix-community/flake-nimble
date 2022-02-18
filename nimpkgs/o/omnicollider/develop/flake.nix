{
  description = ''SuperCollider wrapper for omni.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-omnicollider-develop.flake = false;
  inputs.src-omnicollider-develop.type = "github";
  inputs.src-omnicollider-develop.owner = "vitreo12";
  inputs.src-omnicollider-develop.repo = "omnicollider";
  inputs.src-omnicollider-develop.ref = "refs/heads/develop";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."omni".type = "github";
  inputs."omni".owner = "riinr";
  inputs."omni".repo = "flake-nimble";
  inputs."omni".ref = "flake-pinning";
  inputs."omni".dir = "nimpkgs/o/omni";

  outputs = { self, nixpkgs, flakeNimbleLib, src-omnicollider-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnicollider-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omnicollider-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}