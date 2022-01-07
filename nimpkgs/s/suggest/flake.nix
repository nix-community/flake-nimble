{
  description = ''
    mmap-persistent SymSpell spell checking algorithm
  '';
  inputs.src-suggest.url = "https://github.com/c-blake/suggest.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
