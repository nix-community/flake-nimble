{
  description = ''
    A simple docx reader.
  '';
  inputs.src-docx.url = "https://github.com/xflywind/docx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
