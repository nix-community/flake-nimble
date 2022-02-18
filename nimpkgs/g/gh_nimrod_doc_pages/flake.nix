{
  description = ''Generates a GitHub documentation website for Nim projects.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gh_nimrod_doc_pages-master".type = "github";
  inputs."gh_nimrod_doc_pages-master".owner = "riinr";
  inputs."gh_nimrod_doc_pages-master".repo = "flake-nimble";
  inputs."gh_nimrod_doc_pages-master".ref = "flake-pinning";
  inputs."gh_nimrod_doc_pages-master".dir = "nimpkgs/g/gh_nimrod_doc_pages/master";

    inputs."gh_nimrod_doc_pages-v0_2_0".type = "github";
  inputs."gh_nimrod_doc_pages-v0_2_0".owner = "riinr";
  inputs."gh_nimrod_doc_pages-v0_2_0".repo = "flake-nimble";
  inputs."gh_nimrod_doc_pages-v0_2_0".ref = "flake-pinning";
  inputs."gh_nimrod_doc_pages-v0_2_0".dir = "nimpkgs/g/gh_nimrod_doc_pages/v0_2_0";

    inputs."gh_nimrod_doc_pages-v0_2_2".type = "github";
  inputs."gh_nimrod_doc_pages-v0_2_2".owner = "riinr";
  inputs."gh_nimrod_doc_pages-v0_2_2".repo = "flake-nimble";
  inputs."gh_nimrod_doc_pages-v0_2_2".ref = "flake-pinning";
  inputs."gh_nimrod_doc_pages-v0_2_2".dir = "nimpkgs/g/gh_nimrod_doc_pages/v0_2_2";

    inputs."gh_nimrod_doc_pages-v0_2_4".type = "github";
  inputs."gh_nimrod_doc_pages-v0_2_4".owner = "riinr";
  inputs."gh_nimrod_doc_pages-v0_2_4".repo = "flake-nimble";
  inputs."gh_nimrod_doc_pages-v0_2_4".ref = "flake-pinning";
  inputs."gh_nimrod_doc_pages-v0_2_4".dir = "nimpkgs/g/gh_nimrod_doc_pages/v0_2_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}