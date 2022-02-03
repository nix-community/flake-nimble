{
  description = ''Simple reST HTML generation with some extras.'';
  inputs.src-lazy_rest-master.flake = false;
  inputs.src-lazy_rest-master.type = "github";
  inputs.src-lazy_rest-master.owner = "Araq";
  inputs.src-lazy_rest-master.repo = "lazy_rest";
  inputs.src-lazy_rest-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-lazy_rest-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lazy_rest-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lazy_rest-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}