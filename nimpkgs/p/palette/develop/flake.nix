{
  description = ''Color Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-palette-develop.flake = false;
  inputs.src-palette-develop.type = "github";
  inputs.src-palette-develop.owner = "momeemt";
  inputs.src-palette-develop.repo = "Palette";
  inputs.src-palette-develop.ref = "refs/heads/develop";
  
  
  inputs."nigui".type = "github";
  inputs."nigui".owner = "riinr";
  inputs."nigui".repo = "flake-nimble";
  inputs."nigui".ref = "flake-pinning";
  inputs."nigui".dir = "nimpkgs/n/nigui";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-palette-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-palette-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-palette-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}