{
  description = ''
    Convert bytes to kilobytes, megabytes, gigabytes, etc.
  '';
  inputs.src-bytes2human.url = "https://github.com/juancarlospaco/nim-bytes2human";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
