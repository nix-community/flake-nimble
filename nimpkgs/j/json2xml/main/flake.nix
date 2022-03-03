{
  description = ''Convert json to xml  : JsonNode( comapatible with  module json ) To  XmlNode (comapatible with  module  xmltree)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-json2xml-main.flake = false;
  inputs.src-json2xml-main.type = "github";
  inputs.src-json2xml-main.owner = "MhedhebiIssam";
  inputs.src-json2xml-main.repo = "json2xml";
  inputs.src-json2xml-main.ref = "refs/heads/main";
  inputs.src-json2xml-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-json2xml-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-json2xml-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-json2xml-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}