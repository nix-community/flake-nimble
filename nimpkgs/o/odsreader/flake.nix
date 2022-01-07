{
  description = ''
    OpenDocument Spreadhseet reader
  '';
  inputs.src-odsreader.url = "https://github.com/dariolah/odsreader";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
