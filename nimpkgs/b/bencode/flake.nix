{
  description = ''Bencode serialization/deserialization library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bencode-master".type = "github";
  inputs."bencode-master".owner = "riinr";
  inputs."bencode-master".repo = "flake-nimble";
  inputs."bencode-master".ref = "flake-pinning";
  inputs."bencode-master".dir = "nimpkgs/b/bencode/master";
  inputs."bencode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bencode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}