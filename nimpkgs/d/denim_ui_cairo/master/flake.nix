{
  description = ''Cairo backend for the denim ui engine'';
  inputs.src-denim_ui_cairo-master.flake = false;
  inputs.src-denim_ui_cairo-master.type = "github";
  inputs.src-denim_ui_cairo-master.owner = "nortero-code";
  inputs.src-denim_ui_cairo-master.repo = "midio-ui-cairo";
  inputs.src-denim_ui_cairo-master.ref = "refs/heads/master";
  
  
  inputs."denim_ui".type = "github";
  inputs."denim_ui".owner = "riinr";
  inputs."denim_ui".repo = "flake-nimble";
  inputs."denim_ui".ref = "flake-pinning";
  inputs."denim_ui".dir = "nimpkgs/d/denim_ui";

  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."cairo".type = "github";
  inputs."cairo".owner = "riinr";
  inputs."cairo".repo = "flake-nimble";
  inputs."cairo".ref = "flake-pinning";
  inputs."cairo".dir = "nimpkgs/c/cairo";

  outputs = { self, nixpkgs, src-denim_ui_cairo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-denim_ui_cairo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-denim_ui_cairo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}