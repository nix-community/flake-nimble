{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_4_7.flake = false;
  inputs.src-hmisc-v0_4_7.type = "github";
  inputs.src-hmisc-v0_4_7.owner = "haxscramper";
  inputs.src-hmisc-v0_4_7.repo = "hmisc";
  inputs.src-hmisc-v0_4_7.ref = "refs/tags/v0.4.7";
  
  outputs = { self, nixpkgs, src-hmisc-v0_4_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}