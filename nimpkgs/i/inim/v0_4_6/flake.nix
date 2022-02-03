{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-v0_4_6.flake = false;
  inputs.src-inim-v0_4_6.type = "github";
  inputs.src-inim-v0_4_6.owner = "inim-repl";
  inputs.src-inim-v0_4_6.repo = "INim";
  inputs.src-inim-v0_4_6.ref = "refs/tags/v0.4.6";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."noise".url = "path:../../../n/noise";
  inputs."noise".type = "github";
  inputs."noise".owner = "riinr";
  inputs."noise".repo = "flake-nimble";
  inputs."noise".ref = "flake-pinning";
  inputs."noise".dir = "nimpkgs/n/noise";

  outputs = { self, nixpkgs, src-inim-v0_4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-v0_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-v0_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}