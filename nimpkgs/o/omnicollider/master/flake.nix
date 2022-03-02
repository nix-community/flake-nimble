{
  description = ''SuperCollider wrapper for omni.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-omnicollider-master.flake = false;
  inputs.src-omnicollider-master.type = "github";
  inputs.src-omnicollider-master.owner = "vitreo12";
  inputs.src-omnicollider-master.repo = "omnicollider";
  inputs.src-omnicollider-master.ref = "refs/heads/master";
  inputs.src-omnicollider-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-omnicollider-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnicollider-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omnicollider-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}