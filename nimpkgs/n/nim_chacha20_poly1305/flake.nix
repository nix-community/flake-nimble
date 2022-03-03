{
  description = ''xchacha20_poly1305, chacha20, poly1305'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nim_chacha20_poly1305-master".type = "github";
  inputs."nim_chacha20_poly1305-master".owner = "riinr";
  inputs."nim_chacha20_poly1305-master".repo = "flake-nimble";
  inputs."nim_chacha20_poly1305-master".ref = "flake-pinning";
  inputs."nim_chacha20_poly1305-master".dir = "nimpkgs/n/nim_chacha20_poly1305/master";
  inputs."nim_chacha20_poly1305-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_chacha20_poly1305-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}