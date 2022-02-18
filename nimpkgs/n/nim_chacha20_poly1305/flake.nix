{
  description = ''xchacha20_poly1305, chacha20, poly1305'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nim_chacha20_poly1305-master".type = "github";
  inputs."nim_chacha20_poly1305-master".owner = "riinr";
  inputs."nim_chacha20_poly1305-master".repo = "flake-nimble";
  inputs."nim_chacha20_poly1305-master".ref = "flake-pinning";
  inputs."nim_chacha20_poly1305-master".dir = "nimpkgs/n/nim_chacha20_poly1305/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}