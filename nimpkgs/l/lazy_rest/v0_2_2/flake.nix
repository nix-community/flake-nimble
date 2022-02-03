{
  description = ''Simple reST HTML generation with some extras.'';
  inputs.src-lazy_rest-v0_2_2.flake = false;
  inputs.src-lazy_rest-v0_2_2.type = "github";
  inputs.src-lazy_rest-v0_2_2.owner = "Araq";
  inputs.src-lazy_rest-v0_2_2.repo = "lazy_rest";
  inputs.src-lazy_rest-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."nake".url = "path:../../../n/nake";
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  
  inputs."argument_parser".url = "path:../../../a/argument_parser";
  inputs."argument_parser".type = "github";
  inputs."argument_parser".owner = "riinr";
  inputs."argument_parser".repo = "flake-nimble";
  inputs."argument_parser".ref = "flake-pinning";
  inputs."argument_parser".dir = "nimpkgs/a/argument_parser";

  
  inputs."https://github.com/gradha/badger_bits.git".url = "path:../../../h/https://github.com/gradha/badger_bits.git";
  inputs."https://github.com/gradha/badger_bits.git".type = "github";
  inputs."https://github.com/gradha/badger_bits.git".owner = "riinr";
  inputs."https://github.com/gradha/badger_bits.git".repo = "flake-nimble";
  inputs."https://github.com/gradha/badger_bits.git".ref = "flake-pinning";
  inputs."https://github.com/gradha/badger_bits.git".dir = "nimpkgs/h/https://github.com/gradha/badger_bits.git";

  outputs = { self, nixpkgs, src-lazy_rest-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lazy_rest-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lazy_rest-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}