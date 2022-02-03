{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_4_3.flake = false;
  inputs.src-hmisc-v0_4_3.type = "github";
  inputs.src-hmisc-v0_4_3.owner = "haxscramper";
  inputs.src-hmisc-v0_4_3.repo = "hmisc";
  inputs.src-hmisc-v0_4_3.ref = "refs/tags/v0.4.3";
  
  outputs = { self, nixpkgs, src-hmisc-v0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}