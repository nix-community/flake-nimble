{
  description = ''Color management utility for X'';
  inputs.src-xcm-v0_1_1.flake = false;
  inputs.src-xcm-v0_1_1.type = "github";
  inputs.src-xcm-v0_1_1.owner = "SolitudeSF";
  inputs.src-xcm-v0_1_1.repo = "xcm";
  inputs.src-xcm-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-xcm-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xcm-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xcm-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}