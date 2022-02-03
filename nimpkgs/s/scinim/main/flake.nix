{
  description = ''The core types and functions of the SciNim ecosystem'';
  inputs.src-scinim-main.flake = false;
  inputs.src-scinim-main.type = "github";
  inputs.src-scinim-main.owner = "SciNim";
  inputs.src-scinim-main.repo = "scinim";
  inputs.src-scinim-main.ref = "refs/heads/main";
  
  
  inputs."fusion".url = "path:../../../f/fusion";
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."polynumeric".url = "path:../../../p/polynumeric";
  inputs."polynumeric".type = "github";
  inputs."polynumeric".owner = "riinr";
  inputs."polynumeric".repo = "flake-nimble";
  inputs."polynumeric".ref = "flake-pinning";
  inputs."polynumeric".dir = "nimpkgs/p/polynumeric";

  
  inputs."nimpy".url = "path:../../../n/nimpy";
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  outputs = { self, nixpkgs, src-scinim-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scinim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scinim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}