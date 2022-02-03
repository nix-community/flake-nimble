{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-0_4_1.flake = false;
  inputs.src-inim-0_4_1.type = "github";
  inputs.src-inim-0_4_1.owner = "inim-repl";
  inputs.src-inim-0_4_1.repo = "INim";
  inputs.src-inim-0_4_1.ref = "refs/tags/0.4.1";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-inim-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}