{
  description = ''
    `Section` macro with BDD aliases for testing
  '';
  inputs.src-sections.url = "https://github.com/c0ffeeartc/nim-sections";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
