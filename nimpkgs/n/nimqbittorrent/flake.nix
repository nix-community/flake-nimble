{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimqbittorrent-master".type = "github";
  inputs."nimqbittorrent-master".owner = "riinr";
  inputs."nimqbittorrent-master".repo = "flake-nimble";
  inputs."nimqbittorrent-master".ref = "flake-pinning";
  inputs."nimqbittorrent-master".dir = "nimpkgs/n/nimqbittorrent/master";

    inputs."nimqbittorrent-v0_1_0".type = "github";
  inputs."nimqbittorrent-v0_1_0".owner = "riinr";
  inputs."nimqbittorrent-v0_1_0".repo = "flake-nimble";
  inputs."nimqbittorrent-v0_1_0".ref = "flake-pinning";
  inputs."nimqbittorrent-v0_1_0".dir = "nimpkgs/n/nimqbittorrent/v0_1_0";

    inputs."nimqbittorrent-v0_1_2".type = "github";
  inputs."nimqbittorrent-v0_1_2".owner = "riinr";
  inputs."nimqbittorrent-v0_1_2".repo = "flake-nimble";
  inputs."nimqbittorrent-v0_1_2".ref = "flake-pinning";
  inputs."nimqbittorrent-v0_1_2".dir = "nimpkgs/n/nimqbittorrent/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
