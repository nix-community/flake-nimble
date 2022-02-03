{
  description = ''Generates a GitHub documentation website for Nim projects.'';
  inputs.src-gh_nimrod_doc_pages-v0_2_2.flake = false;
  inputs.src-gh_nimrod_doc_pages-v0_2_2.type = "github";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.owner = "Araq";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.repo = "gh_nimrod_doc_pages";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-gh_nimrod_doc_pages-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gh_nimrod_doc_pages-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gh_nimrod_doc_pages-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}