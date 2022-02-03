{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_4_5.flake = false;
  inputs.src-hmisc-v0_4_5.type = "github";
  inputs.src-hmisc-v0_4_5.owner = "haxscramper";
  inputs.src-hmisc-v0_4_5.repo = "hmisc";
  inputs.src-hmisc-v0_4_5.ref = "refs/tags/v0.4.5";
  
  outputs = { self, nixpkgs, src-hmisc-v0_4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}