{
  description = ''ISO codes for Nim.'';
  inputs.src-isocodes-0_3_1.flake = false;
  inputs.src-isocodes-0_3_1.type = "github";
  inputs.src-isocodes-0_3_1.owner = "kraptor";
  inputs.src-isocodes-0_3_1.repo = "isocodes";
  inputs.src-isocodes-0_3_1.ref = "refs/tags/0.3.1";
  
  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  
  inputs."https://github.com/disruptek/bump".type = "github";
  inputs."https://github.com/disruptek/bump".owner = "riinr";
  inputs."https://github.com/disruptek/bump".repo = "flake-nimble";
  inputs."https://github.com/disruptek/bump".ref = "flake-pinning";
  inputs."https://github.com/disruptek/bump".dir = "nimpkgs/h/https://github.com/disruptek/bump";

  outputs = { self, nixpkgs, src-isocodes-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isocodes-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isocodes-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}