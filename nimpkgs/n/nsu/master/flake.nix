{
  description = ''Simple screenshot library & cli tool made in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nsu-master.flake = false;
  inputs.src-nsu-master.type = "github";
  inputs.src-nsu-master.owner = "Senketsu";
  inputs.src-nsu-master.repo = "nsu";
  inputs.src-nsu-master.ref = "refs/heads/master";
  inputs.src-nsu-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."flippy".type = "github";
  inputs."flippy".owner = "riinr";
  inputs."flippy".repo = "flake-nimble";
  inputs."flippy".ref = "flake-pinning";
  inputs."flippy".dir = "nimpkgs/f/flippy";
  inputs."flippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nsu-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nsu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nsu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}