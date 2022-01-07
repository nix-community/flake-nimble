{
  description = ''
    ImGui Frontend for Nimble
  '';
  inputs.src-NimbleImGui.url = "https://github.com/qb-0/NimbleImGui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
