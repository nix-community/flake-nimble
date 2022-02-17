{
  description = ''GitIgnore Generation Interface'';
  inputs.src-gigi-v0_2_1.flake = false;
  inputs.src-gigi-v0_2_1.type = "github";
  inputs.src-gigi-v0_2_1.owner = "attakei";
  inputs.src-gigi-v0_2_1.repo = "gigi";
  inputs.src-gigi-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."puppy".type = "github";
  inputs."puppy".owner = "riinr";
  inputs."puppy".repo = "flake-nimble";
  inputs."puppy".ref = "flake-pinning";
  inputs."puppy".dir = "nimpkgs/p/puppy";

  outputs = { self, nixpkgs, src-gigi-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gigi-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gigi-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}