{
  description = ''a benchmark tool'';
  inputs.src-golden-0_0_1.flake = false;
  inputs.src-golden-0_0_1.type = "github";
  inputs.src-golden-0_0_1.owner = "disruptek";
  inputs.src-golden-0_0_1.repo = "golden";
  inputs.src-golden-0_0_1.ref = "refs/tags/0.0.1";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-golden-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golden-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-golden-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}