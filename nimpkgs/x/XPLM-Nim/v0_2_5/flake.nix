{
  description = ''X-Plane XPLM SDK wrapper'';
  inputs.src-XPLM-Nim-v0_2_5.flake = false;
  inputs.src-XPLM-Nim-v0_2_5.type = "github";
  inputs.src-XPLM-Nim-v0_2_5.owner = "jpoirier";
  inputs.src-XPLM-Nim-v0_2_5.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, src-XPLM-Nim-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-XPLM-Nim-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}