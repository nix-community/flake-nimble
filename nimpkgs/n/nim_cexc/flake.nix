{
  description = ''
    A simple chunked external protocol interface for Splunk custom search commands.
  '';
  inputs.src-nim_cexc.url = "https://github.com/metasyn/nim-cexc-splunk";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
