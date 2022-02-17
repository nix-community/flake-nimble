{
  description = ''Provides a complex command-line parser'';
  inputs.src-argument_parser-master.flake = false;
  inputs.src-argument_parser-master.type = "github";
  inputs.src-argument_parser-master.owner = "Xe";
  inputs.src-argument_parser-master.repo = "argument_parser";
  inputs.src-argument_parser-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/xe/badger_bits.git".type = "github";
  inputs."https://github.com/xe/badger_bits.git".owner = "riinr";
  inputs."https://github.com/xe/badger_bits.git".repo = "flake-nimble";
  inputs."https://github.com/xe/badger_bits.git".ref = "flake-pinning";
  inputs."https://github.com/xe/badger_bits.git".dir = "nimpkgs/h/https://github.com/xe/badger_bits.git";

  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  outputs = { self, nixpkgs, src-argument_parser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argument_parser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argument_parser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}