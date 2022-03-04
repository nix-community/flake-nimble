{
  description = ''Cairo backend for the denim ui engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-denim_ui_cairo-master.flake = false;
  inputs.src-denim_ui_cairo-master.type = "github";
  inputs.src-denim_ui_cairo-master.owner = "nortero-code";
  inputs.src-denim_ui_cairo-master.repo = "midio-ui-cairo";
  inputs.src-denim_ui_cairo-master.ref = "refs/heads/master";
  inputs.src-denim_ui_cairo-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."denim_ui".type = "github";
  inputs."denim_ui".owner = "riinr";
  inputs."denim_ui".repo = "flake-nimble";
  inputs."denim_ui".ref = "flake-pinning";
  inputs."denim_ui".dir = "nimpkgs/d/denim_ui";
  inputs."denim_ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."denim_ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."cairo".type = "github";
  inputs."cairo".owner = "riinr";
  inputs."cairo".repo = "flake-nimble";
  inputs."cairo".ref = "flake-pinning";
  inputs."cairo".dir = "nimpkgs/c/cairo";
  inputs."cairo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-denim_ui_cairo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-denim_ui_cairo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-denim_ui_cairo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}