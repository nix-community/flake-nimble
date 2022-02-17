{
  description = ''The core types and functions of the SciNim ecosystem'';
  inputs.src-scinim-v0_2_2.flake = false;
  inputs.src-scinim-v0_2_2.type = "github";
  inputs.src-scinim-v0_2_2.owner = "SciNim";
  inputs.src-scinim-v0_2_2.repo = "scinim";
  inputs.src-scinim-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."polynumeric".type = "github";
  inputs."polynumeric".owner = "riinr";
  inputs."polynumeric".repo = "flake-nimble";
  inputs."polynumeric".ref = "flake-pinning";
  inputs."polynumeric".dir = "nimpkgs/p/polynumeric";

  
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  outputs = { self, nixpkgs, src-scinim-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scinim-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scinim-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}