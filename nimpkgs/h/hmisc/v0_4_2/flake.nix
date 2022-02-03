{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_4_2.flake = false;
  inputs.src-hmisc-v0_4_2.type = "github";
  inputs.src-hmisc-v0_4_2.owner = "haxscramper";
  inputs.src-hmisc-v0_4_2.repo = "hmisc";
  inputs.src-hmisc-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, src-hmisc-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}