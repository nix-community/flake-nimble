{
  description = '' Websocket server and client implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."websock-main".type = "github";
  inputs."websock-main".owner = "riinr";
  inputs."websock-main".repo = "flake-nimble";
  inputs."websock-main".ref = "flake-pinning";
  inputs."websock-main".dir = "nimpkgs/w/websock/main";
  inputs."websock-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websock-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}