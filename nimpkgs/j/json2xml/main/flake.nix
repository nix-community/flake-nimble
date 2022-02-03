{
  description = ''Convert json to xml  : JsonNode( comapatible with  module json ) To  XmlNode (comapatible with  module  xmltree)'';
  inputs.src-json2xml-main.flake = false;
  inputs.src-json2xml-main.type = "github";
  inputs.src-json2xml-main.owner = "MhedhebiIssam";
  inputs.src-json2xml-main.repo = "json2xml";
  inputs.src-json2xml-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-json2xml-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-json2xml-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-json2xml-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}