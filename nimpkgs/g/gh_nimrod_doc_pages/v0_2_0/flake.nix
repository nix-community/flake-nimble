{
  description = ''Generates a GitHub documentation website for Nim projects.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-gh_nimrod_doc_pages-v0_2_0.flake = false;
  inputs.src-gh_nimrod_doc_pages-v0_2_0.type = "github";
  inputs.src-gh_nimrod_doc_pages-v0_2_0.owner = "Araq";
  inputs.src-gh_nimrod_doc_pages-v0_2_0.repo = "gh_nimrod_doc_pages";
  inputs.src-gh_nimrod_doc_pages-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-gh_nimrod_doc_pages-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gh_nimrod_doc_pages-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gh_nimrod_doc_pages-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gh_nimrod_doc_pages-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}