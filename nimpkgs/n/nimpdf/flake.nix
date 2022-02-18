{
  description = ''library for generating PDF files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimPDF-master".type = "github";
  inputs."nimPDF-master".owner = "riinr";
  inputs."nimPDF-master".repo = "flake-nimble";
  inputs."nimPDF-master".ref = "flake-pinning";
  inputs."nimPDF-master".dir = "nimpkgs/n/nimPDF/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}