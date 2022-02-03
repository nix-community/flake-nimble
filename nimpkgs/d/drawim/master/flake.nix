{
  description = ''Simple library to draw stuff on a window'';
  inputs.src-drawim-master.flake = false;
  inputs.src-drawim-master.type = "github";
  inputs.src-drawim-master.owner = "GabrielLasso";
  inputs.src-drawim-master.repo = "drawim";
  inputs.src-drawim-master.ref = "refs/heads/master";
  
  
  inputs."staticglfw".url = "path:../../../s/staticglfw";
  inputs."staticglfw".type = "github";
  inputs."staticglfw".owner = "riinr";
  inputs."staticglfw".repo = "flake-nimble";
  inputs."staticglfw".ref = "flake-pinning";
  inputs."staticglfw".dir = "nimpkgs/s/staticglfw";

  
  inputs."opengl".url = "path:../../../o/opengl";
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  
  inputs."jscanvas".url = "path:../../../j/jscanvas";
  inputs."jscanvas".type = "github";
  inputs."jscanvas".owner = "riinr";
  inputs."jscanvas".repo = "flake-nimble";
  inputs."jscanvas".ref = "flake-pinning";
  inputs."jscanvas".dir = "nimpkgs/j/jscanvas";

  outputs = { self, nixpkgs, src-drawim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drawim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-drawim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}