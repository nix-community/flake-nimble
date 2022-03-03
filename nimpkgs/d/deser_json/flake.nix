{
  description = ''JSON-Binding for deser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."deser_json-master".type = "github";
  inputs."deser_json-master".owner = "riinr";
  inputs."deser_json-master".repo = "flake-nimble";
  inputs."deser_json-master".ref = "flake-pinning";
  inputs."deser_json-master".dir = "nimpkgs/d/deser_json/master";
  inputs."deser_json-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser_json-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}