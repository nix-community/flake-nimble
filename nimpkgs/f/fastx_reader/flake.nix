{
  description = ''FastQ and Fasta readers for NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."fastx_reader-master".type = "github";
  inputs."fastx_reader-master".owner = "riinr";
  inputs."fastx_reader-master".repo = "flake-nimble";
  inputs."fastx_reader-master".ref = "flake-pinning";
  inputs."fastx_reader-master".dir = "nimpkgs/f/fastx_reader/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}