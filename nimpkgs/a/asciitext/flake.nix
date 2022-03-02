{
  description = ''Ascii Text allows you to print large ASCII fonts for the console and for the web'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."asciitext-master".type = "github";
  inputs."asciitext-master".owner = "riinr";
  inputs."asciitext-master".repo = "flake-nimble";
  inputs."asciitext-master".ref = "flake-pinning";
  inputs."asciitext-master".dir = "nimpkgs/a/asciitext/master";
  inputs."asciitext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asciitext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}