{
  description = ''Boilerplate generator for Jester web framework'';
  inputs.src-gen-1_0_0.flake = false;
  inputs.src-gen-1_0_0.type = "github";
  inputs.src-gen-1_0_0.owner = "Adeohluwa";
  inputs.src-gen-1_0_0.repo = "gen";
  inputs.src-gen-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."progress".url = "path:../../../p/progress";
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";

  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."fab".url = "path:../../../f/fab";
  inputs."fab".type = "github";
  inputs."fab".owner = "riinr";
  inputs."fab".repo = "flake-nimble";
  inputs."fab".ref = "flake-pinning";
  inputs."fab".dir = "nimpkgs/f/fab";

  
  inputs."gara".url = "path:../../../g/gara";
  inputs."gara".type = "github";
  inputs."gara".owner = "riinr";
  inputs."gara".repo = "flake-nimble";
  inputs."gara".ref = "flake-pinning";
  inputs."gara".dir = "nimpkgs/g/gara";

  outputs = { self, nixpkgs, src-gen-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gen-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gen-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}