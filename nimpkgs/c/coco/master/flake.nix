{
  description = ''Code coverage CLI + library for Nim using LCOV'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-coco-master.flake = false;
  inputs.src-coco-master.type = "github";
  inputs.src-coco-master.owner = "samuelroy";
  inputs.src-coco-master.repo = "coco";
  inputs.src-coco-master.ref = "refs/heads/master";
  inputs.src-coco-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."glob".type = "github";
  # inputs."glob".owner = "riinr";
  # inputs."glob".repo = "flake-nimble";
  # inputs."glob".ref = "flake-pinning";
  # inputs."glob".dir = "nimpkgs/g/glob";
  # inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-coco-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coco-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-coco-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}