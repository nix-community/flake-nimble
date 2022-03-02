{
  description = ''Color Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-Palette-develop.flake = false;
  inputs.src-Palette-develop.type = "github";
  inputs.src-Palette-develop.owner = "momeemt";
  inputs.src-Palette-develop.repo = "Palette";
  inputs.src-Palette-develop.ref = "refs/heads/develop";
  inputs.src-Palette-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nigui".type = "github";
  # inputs."nigui".owner = "riinr";
  # inputs."nigui".repo = "flake-nimble";
  # inputs."nigui".ref = "flake-pinning";
  # inputs."nigui".dir = "nimpkgs/n/nigui";
  # inputs."nigui".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nigui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-Palette-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Palette-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Palette-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}