{
  description = ''
    Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.
  '';
  inputs.src-mddoc.url = "https://github.com/treeform/mddoc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
