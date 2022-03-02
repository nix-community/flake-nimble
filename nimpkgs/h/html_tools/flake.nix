{
  description = ''HTML5 Tools for Nim, all Templates, No CSS, No Libs, No JS Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."html_tools-master".type = "github";
  inputs."html_tools-master".owner = "riinr";
  inputs."html_tools-master".repo = "flake-nimble";
  inputs."html_tools-master".ref = "flake-pinning";
  inputs."html_tools-master".dir = "nimpkgs/h/html_tools/master";
  inputs."html_tools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html_tools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}