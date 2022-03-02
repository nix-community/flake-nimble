{
  description = ''Pure Nim XML parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xml-0_1_4.flake = false;
  inputs.src-xml-0_1_4.type = "github";
  inputs.src-xml-0_1_4.owner = "ba0f3";
  inputs.src-xml-0_1_4.repo = "xml.nim";
  inputs.src-xml-0_1_4.ref = "refs/tags/0.1.4";
  inputs.src-xml-0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xml-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xml-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xml-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}