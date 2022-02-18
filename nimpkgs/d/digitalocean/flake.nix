{
  description = ''Wrapper for DigitalOcean HTTP API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."digitalocean-master".type = "github";
  inputs."digitalocean-master".owner = "riinr";
  inputs."digitalocean-master".repo = "flake-nimble";
  inputs."digitalocean-master".ref = "flake-pinning";
  inputs."digitalocean-master".dir = "nimpkgs/d/digitalocean/master";

    inputs."digitalocean-0_1_1".type = "github";
  inputs."digitalocean-0_1_1".owner = "riinr";
  inputs."digitalocean-0_1_1".repo = "flake-nimble";
  inputs."digitalocean-0_1_1".ref = "flake-pinning";
  inputs."digitalocean-0_1_1".dir = "nimpkgs/d/digitalocean/0_1_1";

    inputs."digitalocean-v0_1_0".type = "github";
  inputs."digitalocean-v0_1_0".owner = "riinr";
  inputs."digitalocean-v0_1_0".repo = "flake-nimble";
  inputs."digitalocean-v0_1_0".ref = "flake-pinning";
  inputs."digitalocean-v0_1_0".dir = "nimpkgs/d/digitalocean/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}