{
  description = ''Convert json to xml  : JsonNode( comapatible with  module json ) To  XmlNode (comapatible with  module  xmltree)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."json2xml-main".type = "github";
  inputs."json2xml-main".owner = "riinr";
  inputs."json2xml-main".repo = "flake-nimble";
  inputs."json2xml-main".ref = "flake-pinning";
  inputs."json2xml-main".dir = "nimpkgs/j/json2xml/main";
  inputs."json2xml-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json2xml-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}