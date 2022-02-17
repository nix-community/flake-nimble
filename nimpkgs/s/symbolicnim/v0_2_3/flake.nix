{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';
  inputs.src-symbolicnim-v0_2_3.flake = false;
  inputs.src-symbolicnim-v0_2_3.type = "github";
  inputs.src-symbolicnim-v0_2_3.owner = "HugoGranstrom";
  inputs.src-symbolicnim-v0_2_3.repo = "symbolicnim";
  inputs.src-symbolicnim-v0_2_3.ref = "refs/tags/v0.2.3";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."terminaltables".type = "github";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".repo = "flake-nimble";
  inputs."terminaltables".ref = "flake-pinning";
  inputs."terminaltables".dir = "nimpkgs/t/terminaltables";

  outputs = { self, nixpkgs, src-symbolicnim-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-symbolicnim-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-symbolicnim-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}