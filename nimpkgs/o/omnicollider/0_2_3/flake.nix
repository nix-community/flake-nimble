{
  description = ''SuperCollider wrapper for omni.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-omnicollider-0_2_3.flake = false;
  inputs.src-omnicollider-0_2_3.type = "github";
  inputs.src-omnicollider-0_2_3.owner = "vitreo12";
  inputs.src-omnicollider-0_2_3.repo = "omnicollider";
  inputs.src-omnicollider-0_2_3.ref = "refs/tags/0.2.3";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-omnicollider-0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnicollider-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omnicollider-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}