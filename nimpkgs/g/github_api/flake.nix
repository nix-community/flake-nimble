{
  description = ''
    Nim wrapper for the GitHub API
  '';
  inputs.src-github_api.url = "https://github.com/watzon/github-api-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
