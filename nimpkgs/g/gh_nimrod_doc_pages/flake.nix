{
  description = ''
    Generates a GitHub documentation website for Nim projects.
  '';
  inputs.src-gh_nimrod_doc_pages.url = "https://github.com/Araq/gh_nimrod_doc_pages";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
