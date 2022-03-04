{
  description = ''Windows automation module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-wauto-master.flake = false;
  inputs.src-wauto-master.type = "github";
  inputs.src-wauto-master.owner = "khchen";
  inputs.src-wauto-master.repo = "wAuto";
  inputs.src-wauto-master.ref = "refs/heads/master";
  inputs.src-wauto-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."wnim".type = "github";
  inputs."wnim".owner = "riinr";
  inputs."wnim".repo = "flake-nimble";
  inputs."wnim".ref = "flake-pinning";
  inputs."wnim".dir = "nimpkgs/w/wnim";
  inputs."wnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wAuto-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wAuto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wAuto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}