{
  description = ''
    Pretty looking, full featured, Python-inspired unit test library.
  '';
  inputs.src-einheit.url = "https://github.com/jyapayne/einheit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
