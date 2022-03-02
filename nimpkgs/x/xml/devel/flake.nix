{
  description = ''Pure Nim XML parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xml-devel.flake = false;
  inputs.src-xml-devel.type = "github";
  inputs.src-xml-devel.owner = "ba0f3";
  inputs.src-xml-devel.repo = "xml.nim";
  inputs.src-xml-devel.ref = "refs/tags/devel";
  inputs.src-xml-devel.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xml-devel, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xml-devel;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xml-devel"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}