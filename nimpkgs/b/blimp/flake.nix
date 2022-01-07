{
  description = ''
    Utility that helps with big files in git, very similar to git-fat, s3annnex etc.
  '';
  inputs.src-blimp.url = "https://gitlab.3dicc.com/gokr/blimp.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
