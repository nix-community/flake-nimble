{
  description = ''SuperCollider wrapper for omni.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-omnicollider-0_2_2.flake = false;
  inputs.src-omnicollider-0_2_2.type = "github";
  inputs.src-omnicollider-0_2_2.owner = "vitreo12";
  inputs.src-omnicollider-0_2_2.repo = "omnicollider";
  inputs.src-omnicollider-0_2_2.ref = "refs/tags/0.2.2";
  inputs.src-omnicollider-0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."omni".type = "github";
  # inputs."omni".owner = "riinr";
  # inputs."omni".repo = "flake-nimble";
  # inputs."omni".ref = "flake-pinning";
  # inputs."omni".dir = "nimpkgs/o/omni";
  # inputs."omni".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."omni".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-omnicollider-0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnicollider-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omnicollider-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}