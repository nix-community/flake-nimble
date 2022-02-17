{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-v0_4_7.flake = false;
  inputs.src-inim-v0_4_7.type = "github";
  inputs.src-inim-v0_4_7.owner = "inim-repl";
  inputs.src-inim-v0_4_7.repo = "INim";
  inputs.src-inim-v0_4_7.ref = "refs/tags/v0.4.7";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."noise".type = "github";
  inputs."noise".owner = "riinr";
  inputs."noise".repo = "flake-nimble";
  inputs."noise".ref = "flake-pinning";
  inputs."noise".dir = "nimpkgs/n/noise";

  outputs = { self, nixpkgs, src-inim-v0_4_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-v0_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-v0_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}