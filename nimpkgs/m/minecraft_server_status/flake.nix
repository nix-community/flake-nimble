{
  description = ''Check minecraft server status'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."minecraft_server_status-main".type = "github";
  inputs."minecraft_server_status-main".owner = "riinr";
  inputs."minecraft_server_status-main".repo = "flake-nimble";
  inputs."minecraft_server_status-main".ref = "flake-pinning";
  inputs."minecraft_server_status-main".dir = "nimpkgs/m/minecraft_server_status/main";
  inputs."minecraft_server_status-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minecraft_server_status-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."minecraft_server_status-0_1_1".type = "github";
  inputs."minecraft_server_status-0_1_1".owner = "riinr";
  inputs."minecraft_server_status-0_1_1".repo = "flake-nimble";
  inputs."minecraft_server_status-0_1_1".ref = "flake-pinning";
  inputs."minecraft_server_status-0_1_1".dir = "nimpkgs/m/minecraft_server_status/0_1_1";
  inputs."minecraft_server_status-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minecraft_server_status-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}