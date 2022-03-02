{
  description = ''Pure Nim XML parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xml-master.flake = false;
  inputs.src-xml-master.type = "github";
  inputs.src-xml-master.owner = "ba0f3";
  inputs.src-xml-master.repo = "xml.nim";
  inputs.src-xml-master.ref = "refs/heads/master";
  inputs.src-xml-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xml-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}