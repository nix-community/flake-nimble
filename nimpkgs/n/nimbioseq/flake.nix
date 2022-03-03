{
  description = ''Nim Library for sequence (protein/nucleotide) bioinformatics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimbioseq-master".type = "github";
  inputs."nimbioseq-master".owner = "riinr";
  inputs."nimbioseq-master".repo = "flake-nimble";
  inputs."nimbioseq-master".ref = "flake-pinning";
  inputs."nimbioseq-master".dir = "nimpkgs/n/nimbioseq/master";
  inputs."nimbioseq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbioseq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}