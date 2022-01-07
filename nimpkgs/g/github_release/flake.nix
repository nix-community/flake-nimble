{
  description = ''
    github-release package
  '';
  inputs.src-github_release.url = "https://github.com/kdheepak/github-release";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
