{
  description = ''
    Amazon Simple Storage Service (AWS S3) basic API support.
  '';
  inputs.src-awsS3.url = "https://github.com/ThomasTJdev/nim_awsS3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
