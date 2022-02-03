{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_8_0.flake = false;
  inputs.src-hmisc-v0_8_0.type = "github";
  inputs.src-hmisc-v0_8_0.owner = "haxscramper";
  inputs.src-hmisc-v0_8_0.repo = "hmisc";
  inputs.src-hmisc-v0_8_0.ref = "refs/tags/v0.8.0";
  
  outputs = { self, nixpkgs, src-hmisc-v0_8_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_8_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_8_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}