{
  description = ''Load Windows DLL from memory'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-memlib-master.flake = false;
  inputs.src-memlib-master.type = "github";
  inputs.src-memlib-master.owner = "khchen";
  inputs.src-memlib-master.repo = "memlib";
  inputs.src-memlib-master.ref = "refs/heads/master";
  inputs.src-memlib-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."minhook".type = "github";
  inputs."minhook".owner = "riinr";
  inputs."minhook".repo = "flake-nimble";
  inputs."minhook".ref = "flake-pinning";
  inputs."minhook".dir = "nimpkgs/m/minhook";
  inputs."minhook".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minhook".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-memlib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-memlib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-memlib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}