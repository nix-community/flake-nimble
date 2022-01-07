{
  description = ''
    SSH, SCP and SFTP client for Nim
  '';
  inputs.src-ssh2.url = "https://github.com/ba0f3/ssh2.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
