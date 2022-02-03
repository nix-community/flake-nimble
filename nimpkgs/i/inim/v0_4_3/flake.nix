{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-v0_4_3.flake = false;
  inputs.src-inim-v0_4_3.type = "github";
  inputs.src-inim-v0_4_3.owner = "inim-repl";
  inputs.src-inim-v0_4_3.repo = "INim";
  inputs.src-inim-v0_4_3.ref = "refs/tags/v0.4.3";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-inim-v0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}