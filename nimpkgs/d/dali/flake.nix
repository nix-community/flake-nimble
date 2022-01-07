{
  description = ''
    Indie assembler/linker for Android's Dalvik VM .dex & .apk files
  '';
  inputs.src-dali.url = "https://github.com/akavel/dali";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
