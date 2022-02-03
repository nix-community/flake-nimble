{
  description = ''Graphics module for Nim.'';
  inputs.src-graphics-master.flake = false;
  inputs.src-graphics-master.type = "github";
  inputs.src-graphics-master.owner = "nim-lang";
  inputs.src-graphics-master.repo = "graphics";
  inputs.src-graphics-master.ref = "refs/heads/master";
  
  
  inputs."sdl1".url = "path:../../../s/sdl1";
  inputs."sdl1".type = "github";
  inputs."sdl1".owner = "riinr";
  inputs."sdl1".repo = "flake-nimble";
  inputs."sdl1".ref = "flake-pinning";
  inputs."sdl1".dir = "nimpkgs/s/sdl1";

  outputs = { self, nixpkgs, src-graphics-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphics-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-graphics-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}