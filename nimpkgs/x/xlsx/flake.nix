{
  description = ''
    Read and parse Excel files
  '';
  inputs.src-xlsx.url = "https://github.com/xflywind/xlsx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
