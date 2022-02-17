{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-0_4_0.flake = false;
  inputs.src-inim-0_4_0.type = "github";
  inputs.src-inim-0_4_0.owner = "inim-repl";
  inputs.src-inim-0_4_0.repo = "INim";
  inputs.src-inim-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-inim-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}