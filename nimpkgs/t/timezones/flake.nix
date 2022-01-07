{
  description = ''
    Timezone library compatible with the standard library. 
  '';
  inputs.src-timezones.url = "https://github.com/GULPF/timezones";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
