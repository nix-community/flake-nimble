{
  description = ''X-Plane XPLM SDK wrapper'';
  inputs.src-XPLM-Nim-v0_2_0.flake = false;
  inputs.src-XPLM-Nim-v0_2_0.type = "github";
  inputs.src-XPLM-Nim-v0_2_0.owner = "jpoirier";
  inputs.src-XPLM-Nim-v0_2_0.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-XPLM-Nim-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-XPLM-Nim-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}