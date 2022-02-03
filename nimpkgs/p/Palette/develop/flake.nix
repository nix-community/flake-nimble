{
  description = ''Color Library'';
  inputs.src-Palette-develop.flake = false;
  inputs.src-Palette-develop.type = "github";
  inputs.src-Palette-develop.owner = "momeemt";
  inputs.src-Palette-develop.repo = "Palette";
  inputs.src-Palette-develop.ref = "refs/heads/develop";
  
  
  inputs."nigui".url = "path:../../../n/nigui";
  inputs."nigui".type = "github";
  inputs."nigui".owner = "riinr";
  inputs."nigui".repo = "flake-nimble";
  inputs."nigui".ref = "flake-pinning";
  inputs."nigui".dir = "nimpkgs/n/nigui";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-Palette-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Palette-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Palette-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}