{
  description = ''
    Implements framework-agnostic native operating system dialogs calls
  '';
  inputs.src-native_dialogs.url = "https://github.com/SSPkrolik/nim-native-dialogs.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
