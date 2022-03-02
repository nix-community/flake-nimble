{
  description = ''Converts ANSI colour codes to HTML span tags with style tags'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ansitohtml-master".type = "github";
  inputs."ansitohtml-master".owner = "riinr";
  inputs."ansitohtml-master".repo = "flake-nimble";
  inputs."ansitohtml-master".ref = "flake-pinning";
  inputs."ansitohtml-master".dir = "nimpkgs/a/ansitohtml/master";
  inputs."ansitohtml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansitohtml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}