{
  description = ''A Nim library for data science and machine learning'';
  inputs.src-mentat-v0_1_2.flake = false;
  inputs.src-mentat-v0_1_2.type = "github";
  inputs.src-mentat-v0_1_2.owner = "ruivieira";
  inputs.src-mentat-v0_1_2.repo = "nim-mentat";
  inputs.src-mentat-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."science".type = "github";
  inputs."science".owner = "riinr";
  inputs."science".repo = "flake-nimble";
  inputs."science".ref = "flake-pinning";
  inputs."science".dir = "nimpkgs/s/science";

  outputs = { self, nixpkgs, src-mentat-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mentat-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mentat-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}