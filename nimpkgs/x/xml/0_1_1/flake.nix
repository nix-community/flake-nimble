{
  description = ''Pure Nim XML parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xml-0_1_1.flake = false;
  inputs.src-xml-0_1_1.type = "github";
  inputs.src-xml-0_1_1.owner = "ba0f3";
  inputs.src-xml-0_1_1.repo = "xml.nim";
  inputs.src-xml-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xml-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xml-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xml-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}