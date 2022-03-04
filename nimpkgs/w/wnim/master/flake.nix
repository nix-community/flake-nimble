{
  description = ''Nim's Windows GUI Framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-wnim-master.flake = false;
  inputs.src-wnim-master.type = "github";
  inputs.src-wnim-master.owner = "khchen";
  inputs.src-wnim-master.repo = "wNim";
  inputs.src-wnim-master.ref = "refs/heads/master";
  inputs.src-wnim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."memlib".type = "github";
  inputs."memlib".owner = "riinr";
  inputs."memlib".repo = "flake-nimble";
  inputs."memlib".ref = "flake-pinning";
  inputs."memlib".dir = "nimpkgs/m/memlib";
  inputs."memlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wNim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wNim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wNim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}