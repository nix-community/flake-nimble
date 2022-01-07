{
  description = ''
    FastQ and Fasta readers for NIM
  '';
  inputs.src-fastx_reader.url = "https://github.com/ahcm/fastx_reader";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
