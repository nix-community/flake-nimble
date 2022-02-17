{
  description = ''Simple library to draw stuff on a window'';
  inputs.src-drawim-0_1_0.flake = false;
  inputs.src-drawim-0_1_0.type = "github";
  inputs.src-drawim-0_1_0.owner = "GabrielLasso";
  inputs.src-drawim-0_1_0.repo = "drawim";
  inputs.src-drawim-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."staticglfw".type = "github";
  inputs."staticglfw".owner = "riinr";
  inputs."staticglfw".repo = "flake-nimble";
  inputs."staticglfw".ref = "flake-pinning";
  inputs."staticglfw".dir = "nimpkgs/s/staticglfw";

  
  inputs."jscanvas".type = "github";
  inputs."jscanvas".owner = "riinr";
  inputs."jscanvas".repo = "flake-nimble";
  inputs."jscanvas".ref = "flake-pinning";
  inputs."jscanvas".dir = "nimpkgs/j/jscanvas";

  outputs = { self, nixpkgs, src-drawim-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drawim-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-drawim-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}