{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimQBittorrent-master".type = "github";
  inputs."nimQBittorrent-master".owner = "riinr";
  inputs."nimQBittorrent-master".repo = "flake-nimble";
  inputs."nimQBittorrent-master".ref = "flake-pinning";
  inputs."nimQBittorrent-master".dir = "nimpkgs/n/nimQBittorrent/master";

    inputs."nimQBittorrent-v0_1_0".type = "github";
  inputs."nimQBittorrent-v0_1_0".owner = "riinr";
  inputs."nimQBittorrent-v0_1_0".repo = "flake-nimble";
  inputs."nimQBittorrent-v0_1_0".ref = "flake-pinning";
  inputs."nimQBittorrent-v0_1_0".dir = "nimpkgs/n/nimQBittorrent/v0_1_0";

    inputs."nimQBittorrent-v0_1_2".type = "github";
  inputs."nimQBittorrent-v0_1_2".owner = "riinr";
  inputs."nimQBittorrent-v0_1_2".repo = "flake-nimble";
  inputs."nimQBittorrent-v0_1_2".ref = "flake-pinning";
  inputs."nimQBittorrent-v0_1_2".dir = "nimpkgs/n/nimQBittorrent/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}