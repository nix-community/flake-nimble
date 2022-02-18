{
  description = ''Generates a GitHub documentation website for Nim projects.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.flake = false;
  inputs.src-gh_nimrod_doc_pages-v0_2_2.type = "github";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.owner = "Araq";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.repo = "gh_nimrod_doc_pages";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gh_nimrod_doc_pages-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gh_nimrod_doc_pages-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gh_nimrod_doc_pages-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}