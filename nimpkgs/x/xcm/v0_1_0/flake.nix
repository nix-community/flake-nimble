{
  description = ''Color management utility for X'';
  inputs.src-xcm-v0_1_0.flake = false;
  inputs.src-xcm-v0_1_0.type = "github";
  inputs.src-xcm-v0_1_0.owner = "SolitudeSF";
  inputs.src-xcm-v0_1_0.repo = "xcm";
  inputs.src-xcm-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."https://github.com/solitudesf/x11".type = "github";
  inputs."https://github.com/solitudesf/x11".owner = "riinr";
  inputs."https://github.com/solitudesf/x11".repo = "flake-nimble";
  inputs."https://github.com/solitudesf/x11".ref = "flake-pinning";
  inputs."https://github.com/solitudesf/x11".dir = "nimpkgs/h/https://github.com/solitudesf/x11";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-xcm-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xcm-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xcm-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}