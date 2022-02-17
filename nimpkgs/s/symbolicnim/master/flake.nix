{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';
  inputs.src-symbolicnim-master.flake = false;
  inputs.src-symbolicnim-master.type = "github";
  inputs.src-symbolicnim-master.owner = "HugoGranstrom";
  inputs.src-symbolicnim-master.repo = "symbolicnim";
  inputs.src-symbolicnim-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-symbolicnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-symbolicnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-symbolicnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}