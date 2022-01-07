{
  description = ''
    faker is a Nim package that generates fake data for you.
  '';
  inputs.src-faker.url = "https://github.com/jiro4989/faker";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
