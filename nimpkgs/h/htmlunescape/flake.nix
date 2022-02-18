{
  description = ''Port of Python's html.escape and html.unescape to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."htmlunescape-master".type = "github";
  inputs."htmlunescape-master".owner = "riinr";
  inputs."htmlunescape-master".repo = "flake-nimble";
  inputs."htmlunescape-master".ref = "flake-pinning";
  inputs."htmlunescape-master".dir = "nimpkgs/h/htmlunescape/master";

    inputs."htmlunescape-v0_1".type = "github";
  inputs."htmlunescape-v0_1".owner = "riinr";
  inputs."htmlunescape-v0_1".repo = "flake-nimble";
  inputs."htmlunescape-v0_1".ref = "flake-pinning";
  inputs."htmlunescape-v0_1".dir = "nimpkgs/h/htmlunescape/v0_1";

    inputs."htmlunescape-v0_2".type = "github";
  inputs."htmlunescape-v0_2".owner = "riinr";
  inputs."htmlunescape-v0_2".repo = "flake-nimble";
  inputs."htmlunescape-v0_2".ref = "flake-pinning";
  inputs."htmlunescape-v0_2".dir = "nimpkgs/h/htmlunescape/v0_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}