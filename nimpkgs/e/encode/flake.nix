{
  description = ''Encode/decode utf8 utf16 and utf32.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."encode-master".type = "github";
  inputs."encode-master".owner = "riinr";
  inputs."encode-master".repo = "flake-nimble";
  inputs."encode-master".ref = "flake-pinning";
  inputs."encode-master".dir = "nimpkgs/e/encode/master";
  inputs."encode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."encode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}