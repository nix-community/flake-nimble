{
  description = ''Nico game engine'';
  inputs.src-nico-main.flake = false;
  inputs.src-nico-main.type = "github";
  inputs.src-nico-main.owner = "ftsf";
  inputs.src-nico-main.repo = "nico";
  inputs.src-nico-main.ref = "refs/heads/main";
  
  
  inputs."sdl2_nim".type = "github";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".repo = "flake-nimble";
  inputs."sdl2_nim".ref = "flake-pinning";
  inputs."sdl2_nim".dir = "nimpkgs/s/sdl2_nim";

  
  inputs."gifenc".type = "github";
  inputs."gifenc".owner = "riinr";
  inputs."gifenc".repo = "flake-nimble";
  inputs."gifenc".ref = "flake-pinning";
  inputs."gifenc".dir = "nimpkgs/g/gifenc";

  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, src-nico-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nico-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nico-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}