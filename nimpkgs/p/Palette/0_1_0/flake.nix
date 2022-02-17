{
  description = ''Color Library'';
  inputs.src-Palette-0_1_0.flake = false;
  inputs.src-Palette-0_1_0.type = "github";
  inputs.src-Palette-0_1_0.owner = "momeemt";
  inputs.src-Palette-0_1_0.repo = "Palette";
  inputs.src-Palette-0_1_0.ref = "refs/tags/0.1.0";
  
  
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

  outputs = { self, nixpkgs, src-Palette-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Palette-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Palette-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}