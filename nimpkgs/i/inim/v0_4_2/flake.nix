{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-v0_4_2.flake = false;
  inputs.src-inim-v0_4_2.type = "github";
  inputs.src-inim-v0_4_2.owner = "inim-repl";
  inputs.src-inim-v0_4_2.repo = "INim";
  inputs.src-inim-v0_4_2.ref = "refs/tags/v0.4.2";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-inim-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}