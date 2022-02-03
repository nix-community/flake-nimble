{
  description = ''a benchmark tool'';
  inputs.src-golden-1_0_1.flake = false;
  inputs.src-golden-1_0_1.type = "github";
  inputs.src-golden-1_0_1.owner = "disruptek";
  inputs.src-golden-1_0_1.repo = "golden";
  inputs.src-golden-1_0_1.ref = "refs/tags/1.0.1";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."foreach".url = "path:../../../f/foreach";
  inputs."foreach".type = "github";
  inputs."foreach".owner = "riinr";
  inputs."foreach".repo = "flake-nimble";
  inputs."foreach".ref = "flake-pinning";
  inputs."foreach".dir = "nimpkgs/f/foreach";

  outputs = { self, nixpkgs, src-golden-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golden-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-golden-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}