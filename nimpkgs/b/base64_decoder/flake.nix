{
  description = ''base64 cui'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."base64_decoder-master".type = "github";
  inputs."base64_decoder-master".owner = "riinr";
  inputs."base64_decoder-master".repo = "flake-nimble";
  inputs."base64_decoder-master".ref = "flake-pinning";
  inputs."base64_decoder-master".dir = "nimpkgs/b/base64_decoder/master";
  inputs."base64_decoder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base64_decoder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}