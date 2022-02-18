{
  description = ''Spatial data structures for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spacy-master".type = "github";
  inputs."spacy-master".owner = "riinr";
  inputs."spacy-master".repo = "flake-nimble";
  inputs."spacy-master".ref = "flake-pinning";
  inputs."spacy-master".dir = "nimpkgs/s/spacy/master";

    inputs."spacy-0_0_1".type = "github";
  inputs."spacy-0_0_1".owner = "riinr";
  inputs."spacy-0_0_1".repo = "flake-nimble";
  inputs."spacy-0_0_1".ref = "flake-pinning";
  inputs."spacy-0_0_1".dir = "nimpkgs/s/spacy/0_0_1";

    inputs."spacy-0_0_2".type = "github";
  inputs."spacy-0_0_2".owner = "riinr";
  inputs."spacy-0_0_2".repo = "flake-nimble";
  inputs."spacy-0_0_2".ref = "flake-pinning";
  inputs."spacy-0_0_2".dir = "nimpkgs/s/spacy/0_0_2";

    inputs."spacy-0_0_3".type = "github";
  inputs."spacy-0_0_3".owner = "riinr";
  inputs."spacy-0_0_3".repo = "flake-nimble";
  inputs."spacy-0_0_3".ref = "flake-pinning";
  inputs."spacy-0_0_3".dir = "nimpkgs/s/spacy/0_0_3";

    inputs."spacy-0_0_4".type = "github";
  inputs."spacy-0_0_4".owner = "riinr";
  inputs."spacy-0_0_4".repo = "flake-nimble";
  inputs."spacy-0_0_4".ref = "flake-pinning";
  inputs."spacy-0_0_4".dir = "nimpkgs/s/spacy/0_0_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}