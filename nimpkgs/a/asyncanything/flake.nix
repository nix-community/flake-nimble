{
  description = ''
    make anything async [to be honest, fake async]
  '';
  inputs.src-asyncanything.url = "https://github.com/hamidb80/asyncanything";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
