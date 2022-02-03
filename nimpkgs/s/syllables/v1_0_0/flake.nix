{
  description = ''Syllable estimation for Nim.'';
  inputs.src-syllables-v1_0_0.flake = false;
  inputs.src-syllables-v1_0_0.type = "github";
  inputs.src-syllables-v1_0_0.owner = "tonogram";
  inputs.src-syllables-v1_0_0.repo = "nim-syllables";
  inputs.src-syllables-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."https://github.com/disruptek/testes".url = "path:../../../h/https://github.com/disruptek/testes";
  inputs."https://github.com/disruptek/testes".type = "github";
  inputs."https://github.com/disruptek/testes".owner = "riinr";
  inputs."https://github.com/disruptek/testes".repo = "flake-nimble";
  inputs."https://github.com/disruptek/testes".ref = "flake-pinning";
  inputs."https://github.com/disruptek/testes".dir = "nimpkgs/h/https://github.com/disruptek/testes";

  outputs = { self, nixpkgs, src-syllables-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syllables-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-syllables-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}