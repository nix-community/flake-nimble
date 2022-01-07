{
  description = ''
    Nim Home Assistant (NimHA) is a hub for combining multiple home automation devices and automating jobs
  '';
  inputs.src-nimha.url = "https://github.com/ThomasTJdev/nim_homeassistant";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
