{
  description = ''Color management utility for X'';
  inputs.src-xcm-master.flake = false;
  inputs.src-xcm-master.type = "github";
  inputs.src-xcm-master.owner = "SolitudeSF";
  inputs.src-xcm-master.repo = "xcm";
  inputs.src-xcm-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-xcm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xcm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xcm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}