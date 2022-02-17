{
  description = ''The core types and functions of the SciNim ecosystem'';
  inputs.src-scinim-v0_1_0.flake = false;
  inputs.src-scinim-v0_1_0.type = "github";
  inputs.src-scinim-v0_1_0.owner = "SciNim";
  inputs.src-scinim-v0_1_0.repo = "scinim";
  inputs.src-scinim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
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

  outputs = { self, nixpkgs, src-scinim-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scinim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scinim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}