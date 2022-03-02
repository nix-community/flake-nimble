{
  description = ''Turning your worst nightmare into a Nim package. This is a Nim port of mohan-cao's owoify-js, which will help you turn any string into nonsensical babyspeak similar to LeafySweet's infamous Chrome extension.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."owoifynim-main".type = "github";
  inputs."owoifynim-main".owner = "riinr";
  inputs."owoifynim-main".repo = "flake-nimble";
  inputs."owoifynim-main".ref = "flake-pinning";
  inputs."owoifynim-main".dir = "nimpkgs/o/owoifynim/main";
  inputs."owoifynim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owoifynim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}