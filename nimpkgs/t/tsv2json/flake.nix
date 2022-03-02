{
  description = ''Turn TSV file or stream into JSON file or stream'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tsv2json-master".type = "github";
  inputs."tsv2json-master".owner = "riinr";
  inputs."tsv2json-master".repo = "flake-nimble";
  inputs."tsv2json-master".ref = "flake-pinning";
  inputs."tsv2json-master".dir = "nimpkgs/t/tsv2json/master";
  inputs."tsv2json-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tsv2json-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}