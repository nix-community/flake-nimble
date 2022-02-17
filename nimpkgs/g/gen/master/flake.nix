{
  description = ''Boilerplate generator for Jester web framework'';
  inputs.src-gen-master.flake = false;
  inputs.src-gen-master.type = "github";
  inputs.src-gen-master.owner = "Adeohluwa";
  inputs.src-gen-master.repo = "gen";
  inputs.src-gen-master.ref = "refs/heads/master";
  
  
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."fab".type = "github";
  inputs."fab".owner = "riinr";
  inputs."fab".repo = "flake-nimble";
  inputs."fab".ref = "flake-pinning";
  inputs."fab".dir = "nimpkgs/f/fab";

  
  inputs."gara".type = "github";
  inputs."gara".owner = "riinr";
  inputs."gara".repo = "flake-nimble";
  inputs."gara".ref = "flake-pinning";
  inputs."gara".dir = "nimpkgs/g/gara";

  outputs = { self, nixpkgs, src-gen-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}