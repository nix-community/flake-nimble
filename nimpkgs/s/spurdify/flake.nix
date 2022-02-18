{
  description = ''Spurdification library and CLI'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spurdify-master".type = "github";
  inputs."spurdify-master".owner = "riinr";
  inputs."spurdify-master".repo = "flake-nimble";
  inputs."spurdify-master".ref = "flake-pinning";
  inputs."spurdify-master".dir = "nimpkgs/s/spurdify/master";

    inputs."spurdify-0_0_2".type = "github";
  inputs."spurdify-0_0_2".owner = "riinr";
  inputs."spurdify-0_0_2".repo = "flake-nimble";
  inputs."spurdify-0_0_2".ref = "flake-pinning";
  inputs."spurdify-0_0_2".dir = "nimpkgs/s/spurdify/0_0_2";

    inputs."spurdify-v0_0_4".type = "github";
  inputs."spurdify-v0_0_4".owner = "riinr";
  inputs."spurdify-v0_0_4".repo = "flake-nimble";
  inputs."spurdify-v0_0_4".ref = "flake-pinning";
  inputs."spurdify-v0_0_4".dir = "nimpkgs/s/spurdify/v0_0_4";

    inputs."spurdify-v0_0_5".type = "github";
  inputs."spurdify-v0_0_5".owner = "riinr";
  inputs."spurdify-v0_0_5".repo = "flake-nimble";
  inputs."spurdify-v0_0_5".ref = "flake-pinning";
  inputs."spurdify-v0_0_5".dir = "nimpkgs/s/spurdify/v0_0_5";

    inputs."spurdify-v0_0_6".type = "github";
  inputs."spurdify-v0_0_6".owner = "riinr";
  inputs."spurdify-v0_0_6".repo = "flake-nimble";
  inputs."spurdify-v0_0_6".ref = "flake-pinning";
  inputs."spurdify-v0_0_6".dir = "nimpkgs/s/spurdify/v0_0_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}