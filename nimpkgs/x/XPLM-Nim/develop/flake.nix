{
  description = ''X-Plane XPLM SDK wrapper'';
  inputs.src-XPLM-Nim-develop.flake = false;
  inputs.src-XPLM-Nim-develop.type = "github";
  inputs.src-XPLM-Nim-develop.owner = "jpoirier";
  inputs.src-XPLM-Nim-develop.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-XPLM-Nim-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-XPLM-Nim-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}